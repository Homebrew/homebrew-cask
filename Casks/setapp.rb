cask "setapp" do
  version "2.13.2,1638793697"
  sha256 "08e6b47491d56a040cca159f7d6809a6a204f794b2465a715c9cfa1a399ea59b"

  url "https://dl.devmate.com/com.setapp.InstallSetapp/#{version.csv.first}/#{version.csv.second}/InstallSetapp-#{version.csv.first}.zip",
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
