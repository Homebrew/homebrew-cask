cask "popo" do
  version "4.13.1,1728646685271"
  sha256 "056ca291fcd799b1734f3cdfa49b965b868707d1878006d419b1603a2dd35c93"

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

  depends_on macos: ">= :catalina"

  app "popo_mac.app"

  zap trash: [
    "~/Library/Application Support/Netease/Popo",
    "~/Library/Caches/com.netease.game.popo",
    "~/Library/Preferences/com.netease.game.popo.plist",
    "~/Library/Saved Application State/com.netease.game.popo.savedState",
  ]
end
