cask "popo" do
  version "4.17.0,1738934160442"
  sha256 "ce1a803b84ba9df01b573d1d4d4ae1c8001d6be5b1ed9bb0136ec97a9e9aeec1"

  url "https://popo.netease.com/file/popomac/POPO-setup_prod_#{version.csv.second}.dmg"
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
      build = json.dig("data", "url")&.[](build_regex, 1)
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
