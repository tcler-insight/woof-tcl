#
# Copyright (c) 2009, Ashok P. Nadkarni
# All rights reserved.
#
# See the file LICENSE for license

# This file contains test utility procs

package require uri

namespace eval ::woof::test {}

proc ::woof::test::make_test_url {method_name} {
    variable test_url

    return [uri::join scheme $test_url(scheme) host $test_url(host) \
                port $test_url(port) \
                path [file join $test_url(application_url) $test_url(test_url_path) $method_name]]
}

proc ::woof::test::url_part {url field} {
    return [dict get [uri::split $url] $field]
}