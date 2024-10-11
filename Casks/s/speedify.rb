cask "speedify" do
  version "14.9.4,10428"
  sha256 "eb915b80c6757326d4731ecaa5e990aa49ff848eec7747cb350da1a923724a0f"

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
