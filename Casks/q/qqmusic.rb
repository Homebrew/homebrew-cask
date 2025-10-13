cask "qqmusic" do
  version "10.9.0,03,1-24ca0fe76d2237bd78fc3a04a6e8e6d04d48500bea2b11ab4c700df347c2d8b9-68ec66cd"
  sha256 "ae08b0a9944a53aed1a3d968b049655bb22b570de29fdc210a61d997ecfbf875"

  url "https://c.y.qq.com/cgi-bin/file_redirect.fcg?bid=dldir&file=ecosfile%2Fmusic_clntupate%2Fmac%2Fother%2FQQMusicMac#{version.csv.first}Build#{version.csv.second}.dmg&sign=#{version.csv.third}"
  name "QQ音乐"
  desc "Chinese music streaming application"
  homepage "https://y.qq.com/"

  # NOTE: The download URL that we match redirects to another URL that includes
  # a different `sign` query string parameter and that value can change across
  # requests, so we have to use the redirecting URL.
  livecheck do
    url "https://y.qq.com/download/download.js"
    regex(/QQMusicMac[._-]?v?(\d+(?:[._]\d+)+)[._-]?build[._-]?(\d+)\.dmg[^"' ]*?[?&]sign=([^&"' ]+)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
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
