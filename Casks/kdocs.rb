cask "kdocs" do
  version "3.8.6,1001"
  sha256 "22054c9401493ad184c0ab7f90df85c87c2c9d000cd840b8cc081eb02dd35af9"

  url "https://qn.cache.wpscdn.cn/kdocs/apk/kdesktopmac/KDocs_#{version.csv.second}_v#{version.csv.first}.dmg",
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
