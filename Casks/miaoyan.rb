cask "miaoyan" do
  version "1.4.5"
  sha256 "1f2de00a30b6b39c5f81d85555a4594eba3b8bc7cfa1055195b9f42a41921918"

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
