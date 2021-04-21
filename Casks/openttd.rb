cask "openttd" do
  version "1.11.1"
  sha256 "b6cb0211f2332e132eb725f33f5c76a9dc1ec8e46558884817da9b688ccb8910"

  url "https://proxy.binaries.openttd.org/openttd-releases/#{version}/openttd-#{version}-macos-universal.zip"
  name "OpenTTD"
  desc "Open-source transport simulation game"
  homepage "https://www.openttd.org/"

  livecheck do
    url "https://www.openttd.org/downloads/openttd-releases/latest.html"
    strategy :page_match
    regex(%r{href=.*?/openttd-(\d+(?:\.\d+)*)-macos-universal\.zip}i)
  end

  app "OpenTTD.app"

  zap trash: [
    "~/Documents/OpenTTD",
    "~/Library/Application Support/CrashReporter/openttd_*.plist",
    "~/Library/Logs/DiagnosticReports/openttd_*.crash",
    "~/Library/Saved Application State/org.openttd.openttd.savedState",
  ]
end
