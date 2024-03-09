cask "homerow" do
  version "0.21"
  sha256 "f4a4ab412a1d0e210bb120b636c46adc274743319eaeafb30f18155930b3ad48"

  url "https://appcenter-filemanagement-distrib4ede6f06e.azureedge.net/fda0e34b-9f8c-4a56-9c16-422edab964a6/Homerow-#{version}.zip?sv=2019-02-02&sr=c&sig=32WjxG7f2hNschhyvKTedYW25nRNsE0wPWnjTmuEt4I%3D&se=2024-03-09T08%3A08%3A56Z&sp=r", verified: "appcenter-filemanagement-distrib4ede6f06e.azureedge.net/fda0e34b-9f8c-4a56-9c16-422edab964a6"
  name "Homerow"
  desc "Keyboard shortcuts for every button in macOS"
  homepage "https://homerow.app/"

  livecheck do
    url "https://api.appcenter.ms/v0.1/public/sparkle/apps/ce8d17ab-3b3a-4443-bd26-04f801bc2f8b"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :monterey"

  app "Homerow.app"

  zap trash: [
    "~/Library/Application Scripts/com.dexterleng.HomerowLauncher",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.dexterleng.homerow.sfl*",
    "~/Library/Caches/com.dexterleng.Homerow",
    "~/Library/Containers/com.dexterleng.HomerowLauncher",
    "~/Library/HTTPStorages/com.dexterleng.Homerow",
    "~/Library/Preferences/com.dexterleng.Homerow.plist",
    "~/Library/Saved Application State/com.dexterleng.Homerow.savedState",
    "~/Library/WebKit/com.dexterleng.Homerow",
  ]
end
