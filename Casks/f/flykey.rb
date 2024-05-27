cask "flykey" do
  version "1.6.5,2024052201"
  sha256 "e275afe105bb1bd88013a7116f1783477c561b7522fa3ef9e04141ea6911b0ab"

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
