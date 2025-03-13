cask "dropbox@beta" do
  arch arm: "&arch=arm64"

  version "220.3.4043"
  sha256 arm:   "cd4975cc3cc4bea7356f2ee2d15b5a622d4609a0bc6da95ba6f1366c59b68919",
         intel: "4354e20cc62b0791ee86847e850b849e0075028f5c753256acb74e3b3e460d5e"

  url "https://www.dropbox.com/download?build=#{version}&plat=mac&rtoken=&type=full#{arch}",
      verified: "dropbox.com/"
  name "Dropbox"
  desc "Client for the Dropbox cloud storage service"
  homepage "https://www.dropboxforum.com/t5/Dropbox-desktop-client-builds/bd-p/101003016"

  livecheck do
    url :homepage
    regex(/Beta\sBuild\s(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  conflicts_with cask: "dropbox"
  depends_on macos: ">= :high_sierra"

  app "Dropbox.app"

  uninstall launchctl: "com.dropbox.DropboxMacUpdate.agent",
            kext:      "com.getdropbox.dropbox.kext",
            delete:    [
              "/Library/DropboxHelperTools",
              "/Library/Preferences/com.getdropbox.dropbox.dbkextd.plist",
            ]

  zap trash: [
    "~/.dropbox",
    "~/Library/Application Scripts/*.com.getdropbox.dropbox.sync",
    "~/Library/Application Scripts/com.dropbox.alternatenotificationservice",
    "~/Library/Application Scripts/com.dropbox.client.crashpad",
    "~/Library/Application Scripts/com.dropbox.foldertagger",
    "~/Library/Application Scripts/com.getdropbox.dropbox.fileprovider",
    "~/Library/Application Scripts/com.getdropbox.dropbox.garcon",
    "~/Library/Application Scripts/com.getdropbox.dropbox.TransferExtension",
    "~/Library/Application Support/Dropbox",
    "~/Library/Application Support/DropboxElectron",
    "~/Library/Application Support/FileProvider/com.getdropbox.dropbox.fileprovider",
    "~/Library/Caches/CloudKit/com.apple.bird/iCloud.com.getdropbox.Dropbox",
    "~/Library/Caches/com.dropbox.DropboxMacUpdate",
    "~/Library/Caches/com.getdropbox.dropbox",
    "~/Library/Caches/com.getdropbox.DropboxMetaInstaller",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.dropbox.DropboxMacUpdate",
    "~/Library/CloudStorage/Dropbox",
    "~/Library/Containers/com.dropbox.activityprovider",
    "~/Library/Containers/com.dropbox.alternatenotificationservice",
    "~/Library/Containers/com.dropbox.foldertagger",
    "~/Library/Containers/com.getdropbox.dropbox.fileprovider",
    "~/Library/Containers/com.getdropbox.dropbox.garcon",
    "~/Library/Containers/com.getdropbox.dropbox.TransferExtension",
    "~/Library/Dropbox",
    "~/Library/Dropbox/DropboxMacUpdate.app/Contents/MacOS/DropboxMacUpdate",
    "~/Library/Group Containers/*.com.getdropbox.dropbox.sync",
    "~/Library/Group Containers/com.dropbox.client.crashpad",
    "~/Library/Group Containers/com.getdropbox.dropbox.garcon",
    "~/Library/HTTPStorages/com.dropbox.DropboxMacUpdate",
    "~/Library/HTTPStorages/com.getdropbox.dropbox",
    "~/Library/LaunchAgents/com.dropbox.DropboxMacUpdate.agent.plist",
    "~/Library/Logs/Dropbox_debug.log",
    "~/Library/Preferences/com.apple.FileProvider/com.getdropbox.dropbox.fileprovider",
    "~/Library/Preferences/com.dropbox.DropboxMacUpdate.plist",
    "~/Library/Preferences/com.dropbox.DropboxMonitor.plist",
    "~/Library/Preferences/com.dropbox.tungsten.helper.plist",
    "~/Library/Preferences/com.getdropbox.dropbox.plist",
  ]
end
