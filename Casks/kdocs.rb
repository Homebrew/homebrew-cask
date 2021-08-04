cask "kdocs" do
  version "v2.13.0"
  sha256 "cc0aa869986ff7302b1743d3deb34a0f9cf801a5e0bb5e6060209269efb12419"

  url "https://qn.cache.wpscdn.cn/kdocs/apk/kdesktopmac/KDocs_1001_#{version}.dmg", verified: "wpscdn.cn"
  name "金山文档"
  desc "Online collaborate editor for Word, Excel and PPT documents"
  homepage "https://www.kdocs.cn/"

  livecheck do
    url "https://www.kdocs.cn/kd/api/configure/list?idList=appOfficial"
    regex(%r{.*/apk/kdesktopmac/KDocs_\d+_([v.\d]+)\.dmg}i)
  end

  app "金山文档.app"

  zap trash: [
    "~/Library/Preferences/com.kingsoft.kdocs.mac.plist",
    "~/Library/Saved Application State/com.kingsoft.kdocs.mac.savedState",
  ]
end
