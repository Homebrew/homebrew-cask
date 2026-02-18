cask "openttd" do
  version "15.2"
  sha256 "9d660dad404dc022c8d9f022f48f10a2fa9472dc18d2484867de9ca10cbb5015"

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
