cask "speedify" do
  version "11.9.2,8960"
  sha256 :no_check

  url "https://downloads.speedify.com/speedify.php?platform=osx"
  name "Speedify"
  desc "VPN client"
  homepage "https://speedify.com/"

  livecheck do
    url :url
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
