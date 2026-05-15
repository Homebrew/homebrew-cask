cask "popo" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "4.30.2,1778870327720"
    sha256 "f5cfd26e71a12c4896bfddbb4f754e9f20bb0e365966b26ff0eb4f5e9f6880a8"
  end
  on_intel do
    version "4.30.2,1778870136720"
    sha256 "d74fbcef766df47a39262f346c026034a70e3fce077c73bcb42d3cdd08c85c4d"
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

  depends_on macos: :big_sur

  app "popo_mac.app"

  zap trash: [
    "~/Library/Application Support/Netease/Popo",
    "~/Library/Caches/com.netease.game.popo",
    "~/Library/Preferences/com.netease.game.popo.plist",
    "~/Library/Saved Application State/com.netease.game.popo.savedState",
  ]
end
