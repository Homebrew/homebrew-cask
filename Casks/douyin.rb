cask "douyin" do
  version "1.3.0,7044145585217083655,8969298"
  sha256 "47073f450bd7482770dc2022276c97cf60050f82724851b863134327662a40ad"

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
