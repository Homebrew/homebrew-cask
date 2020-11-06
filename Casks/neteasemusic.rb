cask "neteasemusic" do
  version "2.3.2_832,680685466.242a.20191112165731"
  sha256 "52977697538bd24df242e3120e4644aaeab951a07ecb081da62a07b9f6846a62"

  # d1.music.126.net/ was verified as official when first introduced to the cask
  url "https://d1.music.126.net/dmusic/obj/w5zCg8OCw6fCn2vDicOl/#{version.after_comma.major}/#{version.after_comma.minor}/#{version.after_comma.patch}/NeteaseMusic_#{version.before_comma}_web.dmg",
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
