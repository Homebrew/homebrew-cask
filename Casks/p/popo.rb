cask "popo" do
  version "4.8.1,1721032432947"
  sha256 "19aab489e3f3a74ab84fea870de3e7d25047391499e4081498fb96a78e599f0d"

  url "https://popo.netease.com/file/popomac/POPO-setup_prod_#{version.csv.second}.dmg"
  name "NetEase POPO"
  desc "Instant messaging platform"
  homepage "https://popo.netease.com/"

  livecheck do
    url "https://popo.netease.com/api/open/jsonp/check_version?device=4&callback="
    strategy :page_match do |page|
      match = page.match(/["']version["']\s*:\s*["'](\d+(?:\.\d+)+)["'].*?(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "popo_mac.app"

  zap trash: [
    "~/Library/Application Support/Netease/Popo",
    "~/Library/Caches/com.netease.game.popo",
    "~/Library/Preferences/com.netease.game.popo.plist",
    "~/Library/Saved Application State/com.netease.game.popo.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
