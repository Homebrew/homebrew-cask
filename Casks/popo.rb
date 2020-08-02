cask "popo" do
  version "3.4.2"
  sha256 "8066f386c9b014907f2035c8b46f4117b1e773c73fcb5d41ebb2688c984f6280"

  url "http://popo.netease.com/file/popomac/POPO_Mac_V#{version.dots_to_underscores}.dmg"
  appcast "http://popo.netease.com/",
          must_contain: version.dots_to_underscores
  name "NetEase POPO"
  homepage "http://popo.netease.com/"

  app "popo_mac.app"

  zap trash: [
    "~/Library/Application Support/Netease/Popo",
    "~/Library/Saved Application State/com.netease.game.popo.savedState",
    "~/Library/Preferences/com.netease.game.popo.plist",
    "~/Library/Caches/com.netease.game.popo",
  ]
end
