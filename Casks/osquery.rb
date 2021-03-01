cask "osquery" do
  version "4.6.0"
  sha256 "c037742f9f7e416955c0a38cf450e00989fad07f34aef60aba8d3a923502177c"

  url "https://pkg.osquery.io/darwin/osquery-#{version}.pkg"
  appcast "https://github.com/osquery/osquery/releases.atom"
  name "osquery"
  desc "SQL powered operating system instrumentation and analytics"
  homepage "https://osquery.io/"

  pkg "osquery-#{version}.pkg"

  uninstall launchctl: "com.facebook.osqueryd",
            pkgutil:   "com.facebook.osquery"
end
