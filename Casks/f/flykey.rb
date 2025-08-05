cask "flykey" do
  version "1.6.7,2024082401"
  sha256 "e08311dd732f5f31282c01f91c8dec9b9d9db27dc628bfd4f8b574b8f46781d6"

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
