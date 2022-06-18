cask "quit-all" do
  version "1.2"
  sha256 "890209a7ce37045a970c38a07eb6a7f0490c69a1f888d1fce04597a5c5c123e1"

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
