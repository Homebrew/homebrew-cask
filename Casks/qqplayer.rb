cask "qqplayer" do
  version "1.1.1.1208"
  sha256 "c3194077db0f6ccbf38eda19575198750793005f127054ff5e86dc95b2922336"

  url "https://dldir1.qq.com/qqyy/mac/QQPlayer#{version}.dmg"
  name "QQ影音"
  desc "Media player"
  homepage "https://player.qq.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/QQPlayer(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "QQPlayerMac.app"

  uninstall quit: "com.tencent.qqplayermac"

  zap trash: [
    "~/Library/Application Support/com.tencent.qqplayermac",
    "~/Library/Caches/com.tencent.qqplayermac",
    "~/Library/Preferences/com.tencent.qqplayermac.plist",
    "~/Library/Saved Application State/com.tencent.qqpplayermac.savedState",
    "~/Library/Containers/com.tencent.qqplayermac",
  ]
end
