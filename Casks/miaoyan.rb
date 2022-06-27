cask "miaoyan" do
  version "0.6.1"
  sha256 "090bb2d79ff033fc9ab84c9775af9ad6cb0aee093f52d052f29667cedffca3bc"

  url "https://github.com/tw93/MiaoYan/releases/download/V#{version}/MiaoYan.dmg",
      verified: "github.com/tw93/MiaoYan"
  name "MiaoYan"
  desc "Markdown editor"
  homepage "https://miaoyan.app/"

  app "MiaoYan.app"

  zap trash: [
    "~/Library/Application Support/com.tw93.MiaoYan",
    "~/Library/Caches/com.tw93.MiaoYan",
    "~/Library/HTTPStorages/com.tw93.MiaoYan",
    "~/Library/Preferences/com.tw93.MiaoYan.plist",
  ]
end
