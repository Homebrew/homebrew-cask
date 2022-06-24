cask "speedify" do
  version "12.2.0,9097"
  sha256 "2a11c38a70fc8aab6416b703cf072f67934e38d394b2cd360c1185fba31023fc"

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
