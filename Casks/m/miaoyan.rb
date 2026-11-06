cask "miaoyan" do
  version "4.7.1"
  sha256 "dfe55aec06c4307e39ba287d0ba3ada1986659e84fe7b9fee41d195c3e49747c"

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
        "~/Library/WebKit/com.tw93.miaoyan",
      ],
      rmdir: "~/Documents/MiaoYan"
end
