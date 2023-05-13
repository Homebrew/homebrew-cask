cask "qqmusic" do
  version "8.6.0,73222"
  sha256 :no_check

  url "https://dldir1.qq.com/music/clntupate/mac/QQMusicMac_Mgr.dmg"
  name "QQ音乐"
  desc "Chinese music streaming application"
  homepage "https://y.qq.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "QQMusic.app"

  uninstall quit: "com.tencent.QQMusicMac"

  zap trash: [
    "~/Library/Application Support/com.tencent.QQMusicMac",
    "~/Library/Caches/com.tencent.QQMusicMac",
    "~/Library/Containers/com.tencent.QQMusicMac",
    "~/Library/HTTPStorages/com.tencent.QQMusicMac",
    "~/Library/HTTPStorages/com.tencent.QQMusicMac.binarycookies",
    "~/Library/Preferences/com.tencent.QQMusicMac.plist",
    "~/Library/Saved Application State/com.tencent.QQMusicMac.savedState",
    "~/Library/WebKit/com.tencent.QQMusicMac",
  ]
end
