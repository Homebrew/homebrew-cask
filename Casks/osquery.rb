cask "osquery" do
  version "5.3.0"
  sha256 "4b550f413b380d189f8fe3a722348ef6d07cea4daeaad1b13c22c33e2534bb52"

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
