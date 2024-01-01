cask "quit-all" do
  version "1.3.1"
  sha256 "b8036d28e04907563e006f9a54f3dd5ce72be5c3c33a102fb8c5c2fcd25fa54b"

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
    "~/Library/HTTPStorages/com.quitallapp.quitall-paddle.binarycookies",
    "~/Library/HTTPStorages/com.quitallapp.quitall-paddle",
    "~/Library/Preferences/com.quitallapp.quitall-paddle.plist",
  ]
end
