cask "neteasemusic" do
  version "2.3.3,840"
  sha256 "91eb3372e60bd299aee8a924eb0273570f610eeb1227ea26d9a4bb5b5621c609"

  url "https://d1.music.126.net/dmusic/NeteaseMusic#{version.before_comma}_#{version.after_comma}_web.dmg",
      verified:   "d1.music.126.net/",
      user_agent: :fake
  name "NetEase cloud music"
  name "网易云音乐"
  desc "Music streaming platform"
  homepage "https://music.163.com/"

  livecheck do
    url "https://music.163.com/api/mac/appcast.xml"
    strategy :sparkle
  end

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
