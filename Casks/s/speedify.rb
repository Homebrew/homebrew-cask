cask "speedify" do
  version "17.0.4,4112"
  sha256 "6fddd9d517fc622e870412fb215be4891fbffb9fd25f902b071d5f6bd605c136"

  url "https://downloads.speedify.com/Speedify-#{version.csv.first}.#{version.csv.second}.dmg"
  name "Speedify"
  desc "VPN client"
  homepage "https://speedify.com/"

  livecheck do
    url "https://downloads.speedify.com/SpeedifyInstaller.dmg"
    strategy :extract_plist
  end

  depends_on :macos

  app "Speedify.app"

  uninstall launchctl: [
    "me.connectify.SMJobBlessHelper",
    "SpeedifyService",
    "SwitchboardService",
  ]

  zap trash: "~/Library/Speedify"
end
