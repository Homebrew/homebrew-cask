cask "setapp" do
  version "3.17.1,20,1672244114"
  sha256 "16c8cf3ab70d1813b877a61928142774f2e4241c019b14b7845ec8c0aa7b3a7e"

  url "https://dl.devmate.com/com.setapp.DesktopClient/#{version.csv.second}/#{version.csv.third}/Setapp-#{version.csv.second}.zip",
      verified: "devmate.com/com.setapp.DesktopClient/"
  name "Setapp"
  desc "Collection of apps available by subscription"
  homepage "https://setapp.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/updateinfo.devmate.com/com.setapp.DesktopClient/updates.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version},#{item.url[%r{/(\d+)/Setapp-(?:\d+(?:\.\d+)*)\.zip}i, 1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Setapp.app"

  zap trash: [
    "~/Library/Application Scripts/com.setapp.DesktopClient.SetappAgent.FinderSyncExt",
    "~/Library/Caches/com.setapp.DesktopClient",
    "~/Library/Caches/com.setapp.DesktopClient.SetappAgent",
    "~/Library/Logs/Setapp",
    "~/Library/Preferences/com.setapp.DesktopClient.SetappAgent.plist",
    "~/Library/Saved Application State/com.setapp.DesktopClient.savedState",
  ]
end
