cask "neteasemusic" do
  version "2.3.12_956"
  sha256 "11d34c281c38be1a728b5ec562a665d39517b5d4e26ecc51e3e8b34cab7e6f33"

  url "https://d1.music.126.net/dmusic/NeteaseMusic_#{version}_web.dmg",
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
    url "https://music.163.com/api/osx/download/latest"
    strategy :header_match
    regex(/NeteaseMusic[._-]v?(\d+(?:[._]\d+)+)_web/i)
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
