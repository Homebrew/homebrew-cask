cask "neteasemusic" do
  version "2.3.3_840,5066618374.0080.202011195040"
  sha256 "2887894d5480b43d86ac4e6d71e52001a9f6e0b517290e91c0f12a3cec879493"

  url "https://d1.music.126.net/dmusic/obj/w5zCg8OCw6fCn2vDicOl/#{version.after_comma.major}/#{version.after_comma.minor}/#{version.after_comma.patch}/NeteaseMusic_#{version.before_comma}_web.dmg",
      verified:   "d1.music.126.net/",
      user_agent: :fake
  appcast "https://music.163.com/api/mac/appcast.xml"
  name "NetEase cloud music"
  name "网易云音乐"
  desc "Music streaming platform"
  homepage "https://music.163.com/"

  depends_on macos: ">= :sierra"

  app "NeteaseMusic.app"

  uninstall quit: "com.netease.163music"

  zap trash: [
    "~/Library/Caches/com.netease.163music",
    "~/Library/Containers/com.netease.163music",
    "~/Library/Cookies/com.netease.163music.binarycookies",
    "~/Library/Preferences/com.netease.163music.plist",
    "~/Library/Saved Application State/com.netease.163music.savedState",
  ]
end
