cask "iina+" do
  version "0.8.13"
  sha256 "edada730a515924d0403c457d0323f81d80cdb09edd36117142d006968e4bc02"

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version}/IINA+.#{version}.dmg"
  name "IINA+"
  desc "Extra danmaku support for iina (iina 弹幕支持)"
  homepage "https://github.com/xjbeta/iina-plus"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: ">= :ventura"

  app "IINA+.app"

  zap trash: [
    "~/Library/Application Support/com.xjbeta.iina-plus",
    "~/Library/Caches/com.xjbeta.iina-plus",
    "~/Library/Preferences/com.xjbeta.iina-plus.plist",
    "~/Library/WebKit/com.xjbeta.iina-plus",
  ]
end
