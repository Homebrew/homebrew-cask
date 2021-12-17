cask "popo" do
  version "3.39.0"
  sha256 "0480a8770bc2838fd58d2b2992e3cbb2cdf1f14d4176e4c2b6682d4690813e1c"

  url "https://popo.netease.com/file/popomac/POPO-setup_#{version.dots_to_underscores}.dmg"
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
