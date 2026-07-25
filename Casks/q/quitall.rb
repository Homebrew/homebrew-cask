cask "quitall" do
  version "1.3.6"
  sha256 "c0d6354df7426cba30f558cddacc7d7b3e3d6478bfe55b446ee63ac61cf41519"

  url "https://amicoapps.com/wp-content/updates/quitall-#{version}.zip"
  name "QuitAll"
  desc "Quickly quit one, some, or all apps"
  homepage "https://amicoapps.com/app/quitall/"

  livecheck do
    url "https://amicoapps.com/wp-content/updates/quitall.xml"
    strategy :sparkle, &:short_version
  end

  depends_on :macos

  app "QuitAll.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.quitallapp.quitall-paddle.sfl*",
    "~/Library/Application Support/com.quitallapp.quitall-paddle",
    "~/Library/Application Support/Quit All",
    "~/Library/Application Support/QuitAll",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.quitallapp.quitall-paddle",
    "~/Library/Caches/com.quitallapp.quitall-paddle",
    "~/Library/HTTPStorages/com.quitallapp.quitall-paddle",
    "~/Library/HTTPStorages/com.quitallapp.quitall-paddle.binarycookies",
    "~/Library/Preferences/com.quitallapp.quitall-paddle.plist",
  ]
end
