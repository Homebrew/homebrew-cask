cask "openttd" do
  version "15.1"
  sha256 "492508eb79e82a60f69f9bc0eac12793cf7ecd0ba8d53110cd953bb7a4e37fff"

  url "https://cdn.openttd.org/openttd-releases/#{version}/openttd-#{version}-macos-universal.zip"
  name "OpenTTD"
  desc "Open-source transport simulation game"
  homepage "https://www.openttd.org/"

  livecheck do
    url "https://cdn.openttd.org/openttd-releases/latest.yaml"
    strategy :yaml do |yaml|
      yaml["latest"]&.map do |item|
        next if item["name"] != "stable"
        next if item["version"].blank?

        item["version"].to_s
      end
    end
  end

  app "OpenTTD.app"

  zap trash: [
    "~/Documents/OpenTTD",
    "~/Library/Application Support/CrashReporter/openttd_*.plist",
    "~/Library/Logs/DiagnosticReports/openttd_*.crash",
    "~/Library/Saved Application State/org.openttd.openttd.savedState",
  ]
end
