cask "flykey" do
  version "1.6.6,2024081201"
  sha256 "2fd72a8c45f2f608470afee0f0409557dc0b65164fd2cc349800504d0cb5820c"

  url "https://cdn.better365.cn/FlyKey/#{version.csv.second[0..3]}/FlyKey#{version.csv.first}_#{version.csv.second}.zip"
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
