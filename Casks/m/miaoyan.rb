cask "miaoyan" do
  version "4.6.0"
  sha256 "6da89a567e0c56d83cee8063e160dffb36c5903d0a40fceb9b8ff9f9301b92ea"

  url "https://github.com/tw93/MiaoYan/releases/download/V#{version}/MiaoYan_V#{version}.zip"
  name "MiaoYan"
  desc "Markdown editor"
  homepage "https://miaoyan.app/"

  livecheck do
    url "https://miaoyan.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "MiaoYan.app"

  zap trash: [
    "~/Library/Application Support/com.tw93.MiaoYan",
    "~/Library/Caches/com.tw93.MiaoYan",
    "~/Library/HTTPStorages/com.tw93.MiaoYan",
    "~/Library/Preferences/com.tw93.MiaoYan.plist",
  ]
end
