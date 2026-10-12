cask "popo" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "4.36.0,1791460833516"
    sha256 "863ae1e2ad23f1b67ece239e5d963dee73a93cc4dcdd40f8e716c114ed010bb0"
  end
  on_intel do
    version "4.36.0,1791460584673"
    sha256 "e98ff3896b321b0b063df3abb218fd4a08af0e565f1ee0cc96bb4b883fd026d4"
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
    "~/Library/Application Support/Netease/Popo",
    "~/Library/Caches/com.netease.game.popo",
    "~/Library/Preferences/com.netease.game.popo.plist",
    "~/Library/Saved Application State/com.netease.game.popo.savedState",
  ]
end
