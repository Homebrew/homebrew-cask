cask "speedify" do
  version "12.2.2,9110"
  sha256 "4a8ecdfc1df1ef84897cdfc9d9b2879ec17c0fed2356492c5f223c7465c66b11"

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
