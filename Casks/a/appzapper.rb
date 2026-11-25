cask "appzapper" do
  version "1.0.1,32"
  sha256 "46d46777c25fadb536dde14f6b15439a0f4a6c054cf065e488916cf7efe0925a"

  url "https://appzapper.com/3000-updates/AppZapper-3000-#{version.csv.first}-#{version.csv.second}.zip"
  name "AppZapper 3000"
  desc "Tool to uninstall unwanted applications and their support files"
  homepage "https://appzapper.com/"

  livecheck do
    url "https://appzapper.com/3000-updates/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :sequoia

  app "AppZapper 3000.app"

  uninstall launchctl: "application.com.appzapper.appzapper3000*",
            quit:      "com.appzapper.appzapper3000"

  zap trash: [
    "~/Library/Application Support/AppZapper",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.appzapper.appzapper3000.sfl*",
    "~/Library/Caches/com.appzapper.appzapper3000",
    "~/Library/HTTPStorages/com.appzapper.appzapper3000",
    "~/Library/Preferences/com.appzapper.appzapper2.plist",
    "~/Library/Preferences/com.appzapper.appzapper3000.plist",
  ]
end
