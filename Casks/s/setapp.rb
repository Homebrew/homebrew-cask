cask "setapp" do
  version "3.55.0,156,1787228237"
  sha256 "63d7f3935317f9d57c869586160583810c7995c86a2b159f5f72cfa88ebbb2c5"

  url "https://dl.devmate.com/com.setapp.DesktopClient/#{version.csv.second}/#{version.csv.third}/Setapp-#{version.csv.second}.zip",
      verified: "devmate.com/com.setapp.DesktopClient/"
  name "Setapp"
  desc "Collection of apps available by subscription"
  homepage "https://setapp.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/updateinfo.devmate.com/com.setapp.DesktopClient/updates.xml"
    regex(%r{/(\d+)/Setapp[._-]v?(?:\d+(?:\.\d+)*)\.zip}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{item.version},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Setapp.app"

  uninstall launchctl: [
    "com.setapp.DesktopClient.SetappAgent",
    "com.setapp.DesktopClient.SetappAssistant",
    "com.setapp.DesktopClient.SetappLauncher",
    "com.setapp.DesktopClient.SetappUpdater",
  ]

  zap trash: [
    "~/Library/Application Scripts/com.setapp.DesktopClient.SetappAgent.FinderSyncExt",
    "~/Library/Application Support/Setapp*",
    "~/Library/Caches/com.setapp.DesktopClient",
    "~/Library/Caches/com.setapp.DesktopClient.SetappAgent",
    "~/Library/Containers/com.setapp.DesktopClient.SetappAgent.FinderSyncExt",
    "~/Library/HTTPStorages/com.setapp.DesktopClient*",
    "~/Library/LaunchAgents/com.setapp.DesktopClient.*plist",
    "~/Library/Logs/Setapp",
    "~/Library/Preferences/com.setapp.DesktopClient.plist",
    "~/Library/Preferences/com.setapp.DesktopClient.SetappAgent.plist",
    "~/Library/Saved Application State/com.setapp.DesktopClient.savedState",
  ]
end
