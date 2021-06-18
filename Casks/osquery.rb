cask "osquery" do
  version "4.8.0"
  sha256 "10b02b55b4f1465df7a7b8c46c6072b859e172809c4838c8a65dc148f056b821"

  url "https://pkg.osquery.io/darwin/osquery-#{version}.pkg"
  name "osquery"
  desc "SQL powered operating system instrumentation and analytics"
  homepage "https://osquery.io/"

  livecheck do
    url "https://github.com/osquery/osquery"
    strategy :git
  end

  pkg "osquery-#{version}.pkg"

  uninstall launchctl: "com.facebook.osqueryd",
            pkgutil:   "com.facebook.osquery"
end
