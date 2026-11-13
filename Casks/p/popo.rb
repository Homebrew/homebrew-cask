cask "popo" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "4.37.1,1794497917623"
    sha256 "e4843d9d6c35bdb0c7bc438bc7dc5ae69e299bee3dbd8ec1929252797b7504e5"
  end
  on_intel do
    version "4.37.1,1794498421653"
    sha256 "c0fae2575a5d687700c8986a306e6ab8a8ddad59dbf87eb2e9bddd06f6032cf8"
  end

  url "https://popo.netease.com/file/popomac/POPO-setup_#{version.csv.first}_#{arch}_prod_#{version.csv.second}.dmg"
  name "NetEase POPO"
  desc "Instant messaging platform"
  homepage "https://popo.netease.com/"

  livecheck do
    url "https://popo.netease.com/api/open/jsonp/check_version?device=4&callback=callback"
    regex(/POPO[._-]setup[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}[._-]prod[._-](\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      json_regex = /callback\((.+)\)/i

      match = page.match(json_regex)
      next if match.blank?

      json = Homebrew::Livecheck::Strategy::Json.parse_json(match[1])
      match = json.dig("data", "#{arch}Url")&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on :macos

  app "popo_mac.app"

  uninstall quit: "com.netease.game.popo"

  zap trash: [
    "~/Library/Application Support/com.netease.game.popo",
    "~/Library/Application Support/Netease/Popo",
    "~/Library/Caches/com.netease.game.popo",
    "~/Library/Containers/com.netease.game.popo",
    "~/Library/HTTPStorages/com.netease.game.popo",
    "~/Library/Preferences/com.netease.game.popo.plist",
    "~/Library/Saved Application State/com.netease.game.popo.savedState",
    "~/Library/WebKit/com.netease.game.popo",
  ]
end
