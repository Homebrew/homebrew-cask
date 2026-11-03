cask "miaoyan" do
  version "4.6.1"
  sha256 "37a4d37ba9809bea9f1828c902d1d8066d905f91c1efe11742c4b952fa51160b"

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
