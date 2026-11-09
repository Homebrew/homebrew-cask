cask "miaoyan" do
  version "4.8.0"
  sha256 "bba67c3acacfe75e50aa480180573b43660c191b8b8447ab13cc0271842e8249"

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
