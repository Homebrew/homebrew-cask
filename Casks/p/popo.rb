cask "popo" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  on_arm do
    version "4.20.0,1746718264806"
    sha256 "929e63b7c39cd55e60dd0d0ef70fcab6608bb3b1d3b3456dea1a55caee9755a0"
  end
  on_intel do
    version "4.20.0,1746718212529"
    sha256 "c08715beecb672d83b76e484185c5f55d19f7e124715f2a99c6f5f7e74154e54"
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
