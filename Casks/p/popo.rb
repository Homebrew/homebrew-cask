cask "popo" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  on_arm do
    version "4.21.0,1749200894233"
    sha256 "2204c08b2a650cdb84bd858ab8dc7593db44ab6b77db5a897a3e4e9eb0496496"
  end
  on_intel do
    version "4.21.0,1749200150839"
    sha256 "619ecc6fe943e99453aabb47f7f873c25f0cecf3ec225c9d78e16ea4984c6c36"
  end

  url "https://popo.netease.com/file/popomac/POPO_Mac_#{arch}_prod_#{version.csv.second}.dmg"
  name "NetEase POPO"
  desc "Instant messaging platform"
  homepage "https://popo.netease.com/"

  livecheck do
    url "https://popo.netease.com/api/open/jsonp/check_version?device=4&callback=callback"
    regex(/POPO[._-]Mac[._-]#{arch}[._-]prod[._-](\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      json_regex = /callback\((.+)\)/i

      match = page.match(json_regex)
      next if match.blank?

      json = Homebrew::Livecheck::Strategy::Json.parse_json(match[1])
      version = json.dig("data", "version")
      next if version.blank?

      match = json.dig("data", "#{livecheck_arch}Url")&.match(regex)
      next if match.blank?

      "#{version},#{match[1]}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "popo_mac.app"

  zap trash: [
    "~/Library/Application Support/Netease/Popo",
    "~/Library/Caches/com.netease.game.popo",
    "~/Library/Preferences/com.netease.game.popo.plist",
    "~/Library/Saved Application State/com.netease.game.popo.savedState",
  ]
end
