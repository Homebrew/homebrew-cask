cask "kdocs" do
  version "3.0.1,1001"
  sha256 "f9f61155316146a2cc7b40fd004281072dcd85af315e3db2b5be0d3b2f6d9b00"

  url "https://qn.cache.wpscdn.cn/kdocs/apk/kdesktopmac/KDocs_#{version.after_comma}_v#{version.before_comma}.dmg",
      verified: "qn.cache.wpscdn.cn/kdocs/apk/kdesktopmac/"
  name "金山文档"
  desc "Online collaborate editor for Word, Excel and PPT documents"
  homepage "https://www.kdocs.cn/"

  livecheck do
    url "https://www.kdocs.cn/kd/api/configure/list?idList=appOfficial"
    strategy :page_match do |page|
      match = page.match(/kdocs[._-](\d+(?:\.\d+)*)[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "金山文档.app"

  zap trash: [
    "~/Library/Preferences/com.kingsoft.kdocs.mac.plist",
    "~/Library/Saved Application State/com.kingsoft.kdocs.mac.savedState",
  ]
end
