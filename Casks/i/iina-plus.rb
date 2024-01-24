cask "iina-plus" do
  version "0.7.17"
  sha256 "fddd8f4f526d9a38dabe05258252636b30cfa5204c85274041e740e2f0b5b9d6"

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version}/IINA+.#{version}.dmg"
  name "IINA+"
  desc "Extra danmaku support for iina (iina 弹幕支持)"
  homepage "https://github.com/xjbeta/iina-plus"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "iina+.app"

  zap trash: [
    "~/Library/Application Support/com.xjbeta.iina-plus",
    "~/Library/Caches/com.xjbeta.iina-plus",
    "~/Library/Preferences/com.xjbeta.iina-plus.plist",
    "~/Library/WebKit/com.xjbeta.iina-plus",
  ]
end
