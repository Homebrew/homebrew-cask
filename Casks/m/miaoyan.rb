cask "miaoyan" do
  version "4.10.0"
  sha256 "dacdb4a54528e9cf19863d29606d32682fd8a9895aa537c63a9bd0b1564c5eb4"

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
