cask "douyin" do
  version "1.6.1,7044145585217083655,9521062"
  sha256 "ebab1c1f252b967b63c37d488f165be89c60ba6e47d5867e059f599ca5a8c41d"

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
