cask "qqmusic" do
  version "10.7.1,00,1-0cb9ee4c40e7447e2113cfdee2dc11c88487b0e31fe37cfe1c59e12c20956dce-689e9373"
  sha256 "6b1cf6a1d6c28b56fdb61b1b5d9f7d5880e66ad50c76c70e62afda96a8cfba0e"

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
