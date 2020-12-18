cask "setapp" do
  version "2.7.14,1607686103"
  sha256 "2435ab1dc844b1664bc15ee2c47b0e7a668577abfc9f0e5246a995e0e14961de"

  url "https://dl.devmate.com/com.setapp.InstallSetapp/#{version.before_comma}/#{version.after_comma}/InstallSetapp-#{version.before_comma}.zip",
      verified: "devmate.com/com.setapp.InstallSetapp/"
  appcast "https://updates.devmate.com/com.setapp.InstallSetapp.xml"
  name "Setapp"
  desc "Collection of apps available by subscription"
  homepage "https://setapp.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  installer manual: "Install Setapp.app"

  uninstall script: {
    executable: "#{appdir}/Setapp.app/Contents/Resources/SetappUninstaller.app/Contents/Resources/removeSetapp.sh",
    sudo:       true,
  }

  zap trash: [
    "~/Library/Application Scripts/com.setapp.DesktopClient.SetappAgent.FinderSyncExt",
    "~/Library/Caches/com.setapp.DesktopClient",
    "~/Library/Caches/com.setapp.DesktopClient.SetappAgent",
    "~/Library/Logs/Setapp",
    "~/Library/Preferences/com.setapp.DesktopClient.SetappAgent.plist",
    "~/Library/Saved Application State/com.setapp.DesktopClient.savedState",
  ]
end
