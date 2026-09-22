cask "popo" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "4.35.2,1789895602631"
    sha256 "561557484b2408e73ae16a718b35a39b103b563fb291115921b70073638a0c2a"
  end
  on_intel do
    version "4.35.2,1789912919118"
    sha256 "fafeb5b3f6a9fbccdf00f671930436f8d80e90b3e926b6c9ddfe0583599ed7d7"
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
