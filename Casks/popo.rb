cask "popo" do
  version "3.4.5"
  sha256 "4646511179f3d6f80f87e7922c9b9f93b54c516f569ce3c8a8fac7b4bc3694e0"

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
