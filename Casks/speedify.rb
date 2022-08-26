cask "speedify" do
  version "12.4.1,9212"
  sha256 "3cf81a09b57aa2d37e24056ec7c06666bc41a777eb0fdd6ddb8fc855843b19dc"

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
