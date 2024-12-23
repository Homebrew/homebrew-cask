cask "qqmusic" do
  version "10.0.0,02"
  sha256 "95b12856cb7378ef994464c55b6a768ea5f811cc7acc92a3400d04703eb8cea2"

  url "https://dldir1.qq.com/music/clntupate/mac/QQMusicMac#{version.csv.first}Build#{version.csv.second}.dmg"
  name "QQ音乐"
  desc "Chinese music streaming application"
  homepage "https://y.qq.com/"

  livecheck do
    url "https://y.qq.com/download/download.js"
    regex(/QQMusicMac[._-]?v?(\d+(?:[._]\d+)+)[._-]?build[._-]?(\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[0]},#{match[1]}"
      end
    end
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
