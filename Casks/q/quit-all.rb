cask "quit-all" do
  version "1.3.5"
  sha256 "25baf8146c775018ca13e7f207646694ce187eb39cfdf90bdf2136ebdc0c2215"

  url "https://amicoapps.com/wp-content/updates/quitall-#{version}.zip"
  name "QuitAll"
  desc "Quickly quit one, some, or all apps"
  homepage "https://amicoapps.com/app/quit-all/"

  livecheck do
    url "https://amicoapps.com/wp-content/updates/quitall.xml"
    strategy :sparkle, &:short_version
  end

  app "QuitAll.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.quitallapp.quitall-paddle.sfl*",
    "~/Library/Application Support/com.quitallapp.quitall-paddle",
    "~/Library/Application Support/Quit All",
    "~/Library/Caches/com.quitallapp.quitall-paddle",
    "~/Library/HTTPStorages/com.quitallapp.quitall-paddle",
    "~/Library/HTTPStorages/com.quitallapp.quitall-paddle.binarycookies",
    "~/Library/Preferences/com.quitallapp.quitall-paddle.plist",
  ]
end
