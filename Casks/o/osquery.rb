cask "osquery" do
  version "5.24.1"
  sha256 "950cc119f68c4d292f3e9407171205633e7174e13fc14ab593f48c75d907bd4f"

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
