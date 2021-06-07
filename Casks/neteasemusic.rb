cask "neteasemusic" do
  version "2.3.5,850"
  sha256 "2cd85df1917e36ea8d9d68fb6d56d04afa693ae9f226e0f9f31b3b1fe81467b5"

  url "https://d1.music.126.net/dmusic/NeteaseMusic_#{version.before_comma}_#{version.after_comma}_web.dmg",
      verified:   "d1.music.126.net/",
      user_agent: :fake
  name "NetEase cloud music"
  name "网易云音乐"
  desc "Music streaming platform"
  homepage "https://music.163.com/"

  # The Sparkle feed uses non-English pubDates, which are not parsed correctly
  # by the `:sparkle` strategy. As a workaround, the version is just extracted
  # from the XML using a regex pattern on the download URLs.
  livecheck do
    url "https://music.163.com/api/mac/appcast.xml"
    strategy :page_match do |page|
      page.scan(%r{url=.*?/NeteaseMusic[._-]?v?(\d+(?:\.\d+)+)[_-](\d+)[._-]web\.dmg}i).map do |match|
        "#{match[0]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :sierra"

  app "NeteaseMusic.app"

  uninstall quit: "com.netease.163music"

  zap trash: [
    "~/Library/Application Support/com.netease.163music",
    "~/Library/Caches/com.netease.163music",
    "~/Library/Containers/com.netease.163music",
    "~/Library/Cookies/com.netease.163music.binarycookies",
    "~/Library/Preferences/com.netease.163music.plist",
    "~/Library/Saved Application State/com.netease.163music.savedState",
  ]
end
