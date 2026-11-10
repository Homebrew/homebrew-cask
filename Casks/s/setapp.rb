cask "setapp" do
  version "4.0.0,165,1794245125"
  sha256 "a124004ba0c6555e8bb05904a65e78b7d32a8eaa069b304f8e9a78e4e859735a"

  url "https://dl.devmate.com/com.setapp.DesktopClient/#{version.csv.second}/#{version.csv.third}/Setapp-#{version.csv.second}.zip"
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
  depends_on macos: :ventura

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
