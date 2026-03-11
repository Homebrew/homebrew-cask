cask "quit-all" do
  version "1.3.6,207"
  sha256 "57f699820b1503718762cac592161d2d2780a2cb634cd046e04693f28436c29d"

  url "https://amicoapps.com/wp-content/updates/quitall-#{version.before_comma}.zip"
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
