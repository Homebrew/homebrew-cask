cask "popo" do
  version "3.18.1"
  sha256 "3840799e24ad33079eecd9134070189560a58b25e46f6f4539d112859a733139"

  url "https://popo.netease.com/file/popomac/POPO_Mac_V#{version.dots_to_underscores}.dmg"
  appcast "http://http.popo.netease.com:8080/api/open/jsonp/check_version?device=4",
          must_contain: version.dots_to_underscores
  name "NetEase POPO"
  homepage "https://popo.netease.com/"

  app "popo_mac.app"

  zap trash: [
    "~/Library/Application Support/Netease/Popo",
    "~/Library/Saved Application State/com.netease.game.popo.savedState",
    "~/Library/Preferences/com.netease.game.popo.plist",
    "~/Library/Caches/com.netease.game.popo",
  ]
end
