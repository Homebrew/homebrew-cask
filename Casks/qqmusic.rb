cask "qqmusic" do
  version :"7.0.2.1"
  sha256 :"f3c803f3066656ea7770cbaea3daf2c3daca56b3390f849d5130e05765ed2389"

  url "https://dldir1.qq.com/music/clntupate/mac/QQMusicMac_Mgr.dmg"
  name "QQ音乐"
  homepage "https://y.qq.com/"

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
