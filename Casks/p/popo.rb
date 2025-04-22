cask "popo" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  on_arm do
    version "4.19.1,1745241468198"
    sha256 "11df34a7f3ed887f8fbebd68e57784b9b636a55faf9c6ce25d8528784fa4debf"
  end
  on_intel do
    version "4.19.1,1745242226534"
    sha256 "cd5069c930879ddb7b79fada7efcd49b03b8466acd636b76646ba6373de968dd"
  end

  url "https://popo.netease.com/file/popomac/#{version.csv.first}_#{arch}_prod_#{version.csv.second}.dmg"
  name "NetEase POPO"
  desc "Instant messaging platform"
  homepage "https://popo.netease.com/"

  livecheck do
    url "https://popo.netease.com/api/open/jsonp/check_version?device=4&callback=callback"
    regex(/callback\((.+)\)/i)
    strategy :page_match do |page, regex|
      url_regex = /v?(\d+(?:\.\d+)+)[._-]#{arch}[._-]prod[._-](\d+)\.dmg/i

      match = page.match(regex)
      next if match.blank?

      json = Homebrew::Livecheck::Strategy::Json.parse_json(match[1])
      match = json.dig("data", "#{livecheck_arch}Url")&.match(url_regex)
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
