cask "quit-all" do
  version "1.2.3"
  sha256 "a2e2748ee7145fed3d427f3128ec0e3b5695f252a4510150a912c80b16ae7e10"

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
