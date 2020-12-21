cask "setapp" do
  version "2.7.15,1608219081"
  sha256 "b5ab580ef30d48b0f981f1fdf57a91028598f8b9b0c7b2e31ae3e8692f848080"

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
