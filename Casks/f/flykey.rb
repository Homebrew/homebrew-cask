cask "flykey" do
  version "1.6.3,2023121601"
  sha256 "806cc526c293ed42124a4b13d8dd06f2c06137a2e933507ecd9b9ba157c605cf"

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
