cask "miaoyan" do
  version "0.6.2"
  sha256 "90ead64a551006312acb7c2aa9e7d194a71c4e6e3995044b26d71ed5fcf657e7"

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
