cask "popo" do
  version "3.18.0"
  sha256 "455064ae25573c58585373cc8d1067c94d4dc22cc6c8b924f067a0a3c339c6db"

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
