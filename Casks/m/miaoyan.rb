cask "miaoyan" do
  version "2.4.5"
  sha256 "bbd3e3e40a65e99de27e0e4249b732bcb44a3aa59475f0775377f24d43f4a23c"

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
