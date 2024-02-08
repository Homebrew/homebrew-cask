cask "flykey" do
  version "1.6.4,2023121902"
  sha256 "1348e13fdbd52e5db3fe9f3d3cbb55321d39bdfc52e653c390e9a19d73f813f7"

  url "https://cdn.better365.cn/FlyKey/FlyKey#{version.csv.second}.zip"
  name "FlyKey"
  desc "One-click display of shortcuts"
  homepage "https://www.better365.cn/FlyKey.html"

  livecheck do
    url "https://www.better365.cn/FlyKey.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "FlyKey.app"

  zap trash: [
    "~/Library/HTTPStorages/cn.better365.FlyKey",
    "~/Library/HTTPStorages/cn.better365.FlyKey.binarycookies",
    "~/Library/Preferences/cn.better365.FlyKey.plist",
  ]
end
