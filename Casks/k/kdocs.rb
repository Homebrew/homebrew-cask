cask "kdocs" do
  version "3.9.1,1001"
  sha256 "e729a8e6b60b8f70992525cf67b5d29bad6e2afb2a39509979c99a5a3a1ab3be"

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
