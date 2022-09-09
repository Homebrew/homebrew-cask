cask "douyin" do
  version "1.3.1,7044145585217083655,9044179"
  sha256 "0357b7f33490e40a5af9b6b2cbdde40af926cb6b72d111989da72df0bc208c2f"

  url "https://www.douyin.com/download/pc/obj/douyin-pc-client/#{version.csv.second}/releases/#{version.csv.third}/#{version.csv.first}/darwin-universal/douyin-v#{version.csv.first}-darwin-universal.dmg"
  name "Douyin"
  name "抖音"
  desc "Social software for creating music short videos"
  homepage "https://www.douyin.com/"

  livecheck do
    url "https://www.douyin.com/downloadpage"
    strategy :page_match do |page|
      match = page.match(%r{douyin[._-]pc[._-]client/(\d+)/releases/(\d+)/(\d+(?:\.\d+)+)/darwin[._-]universal}i)
      next if match.blank?

      "#{match[3]},#{match[1]},#{match[2]}"
    end
  end

  app "抖音.app"

  zap trash: "~/Library/Preferences/com.bytedance.douyin.desktop.plist",
      rmdir: "~/Library/Application Support/抖音"
end
