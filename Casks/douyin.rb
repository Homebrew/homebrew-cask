cask "douyin" do
  version "1.7.201,7044145585217083655,9757194"
  sha256 "3d09da21b4f89708ba5bd2fd3a08a627131d1febc819eb369820ecb6db735fe4"

  url "https://www.douyin.com/download/pc/obj/douyin-pc-client/#{version.csv.second}/experiment/alpha-#{version.csv.first}/#{version.csv.third}/#{version.csv.first}/darwin-universal/douyin-v#{version.csv.first}-darwin-universal.dmg"
  name "Douyin"
  name "抖音"
  desc "Social software for creating music short videos"
  homepage "https://www.douyin.com/"

  livecheck do
    url "https://www.douyin.com/downloadpage"
    strategy :page_match do |page|
      match = page.match(%r{client/(\d+)/experiment/alpha-(\d+(?:\.\d+)+)/(\d+).*?darwin[._-]universal\.dmg}i)
      next if match.blank?

      "#{match[2]},#{match[1]},#{match[3]}"
    end
  end

  app "抖音.app"

  zap trash: "~/Library/Preferences/com.bytedance.douyin.desktop.plist",
      rmdir: "~/Library/Application Support/抖音"
end
