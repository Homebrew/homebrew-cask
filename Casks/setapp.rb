cask "setapp" do
  version "3.7.0,1658154274"
  sha256 "37831e8a2c9d72cad4e79c602e5d67f5bd509ae009fffc5bc597cf51d6e33438"

  url "https://dl.devmate.com/com.setapp.DesktopClient/#{version.csv.first}/#{version.csv.second}/Setapp-#{version.csv.first}.zip",
      verified: "devmate.com/com.setapp.DesktopClient/"
  name "Setapp"
  desc "Collection of apps available by subscription"
  homepage "https://setapp.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/updateinfo.devmate.com/com.setapp.DesktopClient/updates.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.url[%r{/(\d+)/Setapp-(?:\d+(?:\.\d+)*)\.zip}i, 1]}"
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
