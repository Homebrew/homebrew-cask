cask "miaoyan" do
  version "1.4.3"
  sha256 "4607da173042a302175793a50a5ae4986a171ae069d912fb28926a361a16d08f"

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
