cask "setapp" do
  version "3.39.0,87,1726136238"
  sha256 "391793e29fa2a836e6fcee2c9f1b5ba28e93e7e6ca72f0facce99d1ffce168c2"

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
  depends_on macos: ">= :big_sur"

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
