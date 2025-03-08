cask "popo" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  on_arm do
    version "4.18.0,1741272609925"
    sha256 "2806322cc4ae19eb58d386f128ec899daeff7109ddbfa88ddac6132869211f29"
  end
  on_intel do
    version "4.18.0,1741272502251"
    sha256 "ee271d2345b8b276a393f53b538388e11651b3c85106bcf9dfd88bddb949efaa"
  end

  url "https://popo.netease.com/file/popomac/POPO_Mac_#{arch}_prod_#{version.csv.second}.dmg"
  name "NetEase POPO"
  desc "Instant messaging platform"
  homepage "https://popo.netease.com/"

  livecheck do
    url "https://popo.netease.com/api/open/jsonp/check_version?device=4&callback=callback"
    regex(/callback\((.+)\)/i)
    strategy :page_match do |page, regex|
      build_regex = /^.*?(\d+)\.dmg$/

      match = page.match(regex)
      next if match.blank?

      json = Homebrew::Livecheck::Strategy::Json.parse_json(match[1])
      version = json.dig("data", "version")
      build = json.dig("data", "#{livecheck_arch}Url")&.[](build_regex, 1)
      next if version.blank? || build.blank?

      "#{version},#{build}"
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
