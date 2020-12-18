cask "popo" do
  version "3.15.3"
  sha256 "d02c3f268a5258b32b5247fee9d6e37295fdc08954a850056756cdf12eb5fd57"

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
