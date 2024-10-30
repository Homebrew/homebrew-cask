cask "speedify" do
  version "15.0.0,10461"
  sha256 "9394ca1d42de1c912b5597e4a8d9d1c6ed1377389100f7144f80ba592269d9b5"

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
