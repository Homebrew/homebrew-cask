cask "setapp" do
  version "2.9.2,1615393422"
  sha256 "64a82cede80ec00e19141c7bb64d19998303ad02927931328d25ff3e411dbf5d"

  url "https://dl.devmate.com/com.setapp.InstallSetapp/#{version.before_comma}/#{version.after_comma}/InstallSetapp-#{version.before_comma}.zip",
      verified: "devmate.com/com.setapp.InstallSetapp/"
  name "Setapp"
  desc "Collection of apps available by subscription"
  homepage "https://setapp.com/"

  livecheck do
    url "https://updates.devmate.com/com.setapp.InstallSetapp.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.url[%r{/(\d+)/InstallSetapp-(?:\d+(?:\.\d+)*)\.zip}i, 1]}"
    end
  end

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
