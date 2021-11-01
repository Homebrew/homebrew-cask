cask "popo" do
  version "3.35.0"
  sha256 "fbc7bbcd13e0ad19c1e313b965ec420b20b78de50dfa1ff2ead26e212d01dfde"

  url "https://popo.netease.com/file/popomac/POPO_Mac_V#{version.dots_to_underscores}.dmg"
  name "NetEase POPO"
  desc "Instant messaging platform"
  homepage "https://popo.netease.com/"

  livecheck do
    url "http://http.popo.netease.com:8080/api/open/jsonp/check_version?device=4"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  app "popo_mac.app"

  zap trash: [
    "~/Library/Application Support/Netease/Popo",
    "~/Library/Caches/com.netease.game.popo",
    "~/Library/Preferences/com.netease.game.popo.plist",
    "~/Library/Saved Application State/com.netease.game.popo.savedState",
  ]
end
