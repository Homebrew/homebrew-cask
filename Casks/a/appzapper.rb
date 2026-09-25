cask "appzapper" do
  version "1.0"
  sha256 "eff16e4f7a9d8498cf10f6d29ce78a38b89e043b07f57848a250f61fee4a84a7"

  url "https://appzapper.com/3000-updates/AppZapper-3000-#{version}-30.zip"
  name "AppZapper 3000"
  desc "Tool to uninstall unwanted applications and their support files"
  homepage "https://appzapper.com/"

  livecheck do
    url "https://appzapper.com/3000-updates/appcast.xml"
    strategy :sparkle, &:short_version
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
