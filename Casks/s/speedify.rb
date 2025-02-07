cask "speedify" do
  version "15.2.0,3237"
  sha256 "215f65f4787b60fb9e80cebe0e2b4d31506185d2e64973e7c79b281609a6df68"

  url "https://downloads.speedify.com/Speedify-#{version.csv.first}.#{version.csv.second}.dmg"
  name "Speedify"
  desc "VPN client"
  homepage "https://speedify.com/"

  livecheck do
    url "https://downloads.speedify.com/SpeedifyInstaller.dmg"
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"

  app "Speedify.app"

  uninstall launchctl: [
    "me.connectify.SMJobBlessHelper",
    "SpeedifyService",
    "SwitchboardService",
  ]

  zap trash: "~/Library/Speedify"
end
