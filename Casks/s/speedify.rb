cask "speedify" do
  version "15.1.1,10495"
  sha256 "ff4fdcf8e0ae67cd7d5c6079c8fa1da38815c7f6aa90e696a2c599a6156eaf15"

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

  caveats do
    requires_rosetta
  end
end
