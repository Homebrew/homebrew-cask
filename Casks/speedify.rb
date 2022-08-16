cask "speedify" do
  version "12.4.0,9186"
  sha256 "3bb311e457d493e8df1b3903a9a38b7dfd53d54ede63eecdb8d0589867499db3"

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
