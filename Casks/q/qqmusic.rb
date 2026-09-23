cask "qqmusic" do
  version "11.10.0,01,1-12c3f22ff33538c2a0946aef6959854685ff6af1b9b938c4dcfb005181b2f1d6-6ab380bb"
  sha256 "62bf3969435e0444902238b5b4d57ed448f7567e331207872836b4914019fb83"

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
  depends_on :macos

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
