cask "osquery" do
  version "5.24.0"
  sha256 "41c56afaa8dfa0e83ac7f47c0ce325e69cf20813327bee592b1a13ee9e3393f6"

  url "https://github.com/osquery/osquery/releases/download/#{version}/osquery-#{version}.pkg"
  name "osquery"
  desc "SQL powered operating system instrumentation and analytics"
  homepage "https://osquery.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "osquery-#{version}.pkg"

  uninstall launchctl: "com.facebook.osqueryd",
            pkgutil:   [
              "com.facebook.osquery",
              "io.osquery.agent",
            ]

  zap :not_required
end
