cask "qqmusic" do
  version "7.5.0,69312"
  sha256 :no_check

  url "https://dldir1.qq.com/music/clntupate/mac/QQMusicMac_Mgr.dmg"
  appcast "https://y.qq.com/download/download.html"
  name "QQ音乐"
  desc "Chinese music streaming application"
  homepage "https://y.qq.com/"

  auto_updates true

  app "QQMusic.app"

  uninstall quit: "com.tencent.QQMusicMac"

  zap trash: [
    "~/Library/Application Support/com.tencent.QQMusicMac",
    "~/Library/Caches/com.tencent.QQMusicMac",
    "~/Library/Containers/com.tencent.QQMusicMac",
    "~/Library/Preferences/com.tencent.QQMusicMac.plist",
    "~/Library/Saved Application State/com.tencent.QQMusicMac.savedState",
  ]
end
