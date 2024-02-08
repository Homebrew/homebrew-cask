cask "kdocs" do
  version "3.9.7,1001"
  sha256 "7379f8089eec4149009881a6f56e41b60de5b5327b2cc46137807d63d629acd3"

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
