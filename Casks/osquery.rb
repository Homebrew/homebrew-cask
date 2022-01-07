cask "osquery" do
  version "5.1.0"
  sha256 "25cfdd033e7ac6d5de601c6263bf1ba089e1972e6a16da5a8f12bdcc9ed24201"

  url "https://pkg.osquery.io/darwin/osquery-#{version}.pkg"
  name "osquery"
  desc "SQL powered operating system instrumentation and analytics"
  homepage "https://osquery.io/"

  livecheck do
    url "https://github.com/osquery/osquery"
    strategy :github_latest
  end

  pkg "osquery-#{version}.pkg"

  uninstall launchctl: "com.facebook.osqueryd",
            pkgutil:   [
              "com.facebook.osquery",
              "io.osquery.agent",
            ]
end
