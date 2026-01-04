cask "miaoyan" do
  version "2.4.1"
  sha256 "0e1290af586bc0f236bdc676c8b12e10211ba740f75748798a1722c0bfe10dff"

  url "https://gw.alipayobjects.com/os/k/app/MiaoYan_V#{version}.zip",
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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "MiaoYan.app"

  zap trash: [
    "~/Library/Application Support/com.tw93.MiaoYan",
    "~/Library/Caches/com.tw93.MiaoYan",
    "~/Library/HTTPStorages/com.tw93.MiaoYan",
    "~/Library/Preferences/com.tw93.MiaoYan.plist",
  ]
end
