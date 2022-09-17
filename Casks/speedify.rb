cask "speedify" do
  version "12.5.0,9244"
  sha256 "843542243067d411d6c4900a58643564ce0c8bd56c6a312da582c3f2de32f441"

  url "https://downloads.speedify.com/Speedify-#{version.csv.first}.#{version.csv.second}.dmg"
  name "Speedify"
  desc "VPN client"
  homepage "https://speedify.com/"

  livecheck do
    url "https://downloads.speedify.com/SpeedifyInstaller.dmg"
    strategy :extract_plist
  end

  depends_on macos: ">= :sierra"

  app "Speedify.app"

  uninstall launchctl: [
              "me.connectify.SMJobBlessHelper",
              "SpeedifyService",
              "SwitchboardService",
            ],
            script:    "#{appdir}/Speedify.app/Contents/Resources/uninstall-speedify-service.sh"

  zap trash: "~/Library/Speedify"
end
