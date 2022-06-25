cask "miaoyan" do
  version "0.6.1"
  sha256 "15d8dd2c42f759229d3ee4bc1510bcac770c0ae650b7aceec3413514af0d84f3"

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
