cask "openttd" do
  version "15.3"
  sha256 "c2ac22ab3ac9ac1e82a8d9029b7e4ab069e425904420076605d860e64460f579"

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
