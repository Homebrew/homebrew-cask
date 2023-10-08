cask "iina-plus" do
  version "0.7.12"
  sha256 "0189438d61ca4c9da720e2b45651de8a7d606d818b261abb5b27ac46118195ee"

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version}/IINA+.#{version}.dmg"
  name "IINA+"
  desc "Extra danmaku support for iina (iina 弹幕支持)"
  homepage "https://github.com/xjbeta/iina-plus"

  auto_updates true

  app "iina+.app"

  zap trash: [
    "~/Library/Application Support/com.xjbeta.iina-plus",
    "~/Library/Caches/com.xjbeta.iina-plus",
    "~/Library/Preferences/com.xjbeta.iina-plus.plist",
    "~/Library/WebKit/com.xjbeta.iina-plus",
  ]
end
