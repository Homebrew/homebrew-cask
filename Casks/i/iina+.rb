cask "iina+" do
  version "0.8.8"
  sha256 "6ef0582c269f50b80bd996663ed317c39cf2804b06d0d7eeaa54ebffba89691a"

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version}/IINA+.#{version}.dmg"
  name "IINA+"
  desc "Extra danmaku support for iina (iina 弹幕支持)"
  homepage "https://github.com/xjbeta/iina-plus"

  disable! date: "2026-09-01", because: :unsigned

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "IINA+.app"

  zap trash: [
    "~/Library/Application Support/com.xjbeta.iina-plus",
    "~/Library/Caches/com.xjbeta.iina-plus",
    "~/Library/Preferences/com.xjbeta.iina-plus.plist",
    "~/Library/WebKit/com.xjbeta.iina-plus",
  ]
end
