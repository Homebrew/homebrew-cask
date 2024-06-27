cask "dropbox" do
  arch arm: ".arm64"
  livecheck_query = on_arch_conditional arm: "&arch=arm64"

  version "202.4.5551"
  sha256 arm:   "4aace3154603d8817e78fa9faa1b4c8f1f1fc7bdfea50edd5aee460698279084",
         intel: "b3493b239b8216eb385cae790cc6c25da4e9bf1691e6fe382c0bc60fb15354a3"

  url "https://edge.dropboxstatic.com/dbx-releng/client/Dropbox%20#{version}#{arch}.dmg",
      verified: "dropboxstatic.com/dbx-releng/client/"
  name "Dropbox"
  desc "Client for the Dropbox cloud storage service"
  homepage "https://www.dropbox.com/"

  livecheck do
    url "https://www.dropbox.com/download?plat=mac&full=1#{livecheck_query}"
    regex(%r{/Dropbox(?:%20|[._-])v?(\d+(?:\.\d+)+)}i)
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "dropbox@beta"

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
