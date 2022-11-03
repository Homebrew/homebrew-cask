cask "douyin" do
  version "1.5.1,7044145585217083655,9414609"
  sha256 "e2992683e2bf3b0cf54a0e356587195ba763c9810c27031cd9f52fb1c671233a"

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
