cask "quit-all" do
  version "1.3.2"
  sha256 "ba4d982554832f963c238772d7387ced4e70332f8a42195fabec5d5fdadbed7b"

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
    "~/Library/Application Support/com.quitallapp.quitall-paddle",
    "~/Library/Application Support/Quit All",
    "~/Library/Caches/com.quitallapp.quitall-paddle",
    "~/Library/HTTPStorages/com.quitallapp.quitall-paddle",
    "~/Library/HTTPStorages/com.quitallapp.quitall-paddle.binarycookies",
    "~/Library/Preferences/com.quitallapp.quitall-paddle.plist",
  ]
end
