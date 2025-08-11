cask "miaoyan" do
  version "1.18.1"
  sha256 "f275efee7e5ec0757f4c7081798d2d4b565f195d797dee21184be2857be587ca"

  url "https://gw.alipayobjects.com/os/k/app1/MiaoYan_V#{version}.zip",
      verified: "gw.alipayobjects.com/"
  name "MiaoYan"
  desc "Markdown editor"
  homepage "https://miaoyan.app/"

  livecheck do
    url "https://miaoyan.app/appcast.xml"
    strategy :sparkle do |items|
      items.map(&:nice_version)
    end
  end

  disable! date: "2026-09-01", because: :unsigned

  auto_updates true
  depends_on macos: ">= :catalina"

  app "MiaoYan.app"

  zap trash: [
    "~/Library/Application Support/com.tw93.MiaoYan",
    "~/Library/Caches/com.tw93.MiaoYan",
    "~/Library/HTTPStorages/com.tw93.MiaoYan",
    "~/Library/Preferences/com.tw93.MiaoYan.plist",
  ]
end
