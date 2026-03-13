cask "popo" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "4.28.0,1772967353455"
    sha256 "f36514682dadbf7f2f42a95980287f15a5c74ae4a2baaa231da95b6873ebc116"
  end
  on_intel do
    version "4.28.0,1772966928829"
    sha256 "49c1a5d400bba86dc8a8c1ca29cd08585df2a31b0fe8b887be320905b055da71"
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

  depends_on macos: ">= :big_sur"

  app "popo_mac.app"

  zap trash: [
    "~/Library/Application Support/Netease/Popo",
    "~/Library/Caches/com.netease.game.popo",
    "~/Library/Preferences/com.netease.game.popo.plist",
    "~/Library/Saved Application State/com.netease.game.popo.savedState",
  ]
end
