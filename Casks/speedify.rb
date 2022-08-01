cask "speedify" do
  version "12.3.0,9139"
  sha256 "633f6d3e9da71ab4e69cf120853fbc5958e990f3aea85847d62deb01a0879315"

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
