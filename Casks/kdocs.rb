cask "kdocs" do
  version "2.13.0,1004"
  sha256 "f2c860e6a79732570c27020fe53335b1ef3fd5201e1f3d0e3c93af07e3b1347f"

  url "https://qn.cache.wpscdn.cn/kdocs/apk/kdesktopmac/KDocs_#{version.after_comma}_v#{version.before_comma}.dmg",
      verified: "qn.cache.wpscdn.cn/kdocs/apk/kdesktopmac/"
  name "金山文档"
  desc "Online collaborate editor for Word, Excel and PPT documents"
  homepage "https://www.kdocs.cn/"

  livecheck do
    url "https://www.kdocs.cn/kd/api/configure/list?idList=appOfficial"
    strategy :page_match do |page|
      match = page.match(/kdocs[._-](\d+(?:\.\d+)*)[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
      "#{match[2]},#{match[1]}"
    end
  end

  app "金山文档.app"

  zap trash: [
    "~/Library/Preferences/com.kingsoft.kdocs.mac.plist",
    "~/Library/Saved Application State/com.kingsoft.kdocs.mac.savedState",
  ]
end
