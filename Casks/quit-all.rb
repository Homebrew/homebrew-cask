cask "quit-all" do
  version "1.1.1,111"
  sha256 "7a038e61cb54448ab67df2fbafffe4f4a8d80a2b9ef3bfdd7fca3cb956ed36e5"

  url "https://amicoapps.com/wp-content/updates/quitall-#{version.csv.first}.zip"
  name "quit-all"
  desc "Quickly quit one, some, or all apps"
  homepage "https://amicoapps.com/app/quit-all/"

  livecheck do
    url "https://amicoapps.com/wp-content/updates/quitall.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "Quit All.app"

  zap trash: [
    "~/Library/Application Support/Quit All",
    "~/Library/Application Support/com.quitallapp.quitall-paddle",
    "~/Library/Caches/com.quitallapp.quitall-paddle",
    "~/Library/HTTPStorages/com.quitallapp.quitall-paddle",
    "~/Library/HTTPStorages/com.quitallapp.quitall-paddle.binarycookies",
    "~/Library/Preferences/com.quitallapp.quitall-paddle.plist",
  ]
end
