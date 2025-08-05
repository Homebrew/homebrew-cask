cask "quit-all" do
  version "1.3.3"
  sha256 "abe4cb071b1bed88b83e1458f5307f7a9d680fe159ad2e52cfe01641fa3e3067"

  url "https://amicoapps.com/wp-content/updates/quitall-#{version}.zip"
  name "QuitAll"
  desc "Quickly quit one, some, or all apps"
  homepage "https://amicoapps.com/app/quit-all/"

  livecheck do
    url "https://amicoapps.com/wp-content/updates/quitall.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

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
