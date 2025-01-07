cask "neteasemusic" do
  version "3.0.6.2300"
  sha256 "8f03e22cbcb03391f7639f3d680b7a2c56d499bc0cafc018a1b3ef04b50c75c0"

  url "https://d1.music.126.net/dmusic/NeteaseMusic_#{version}_web.dmg",
      verified:   "d1.music.126.net/",
      user_agent: :fake
  name "NetEase cloud music"
  name "网易云音乐"
  desc "Music streaming platform"
  homepage "https://music.163.com/"

  # NeteaseMusic(>3.0) uses POST method to fetch the latest download URL. 
  # POST method currently is not supported by Homebrew's `:url` strategy.
  # See https://github.com/orgs/Homebrew/discussions/5756.
  livecheck do
    skip "No version information available without POST method."
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "NeteaseMusic.app"

  uninstall quit: "com.netease.163music"

  zap trash: [
    "~/Library/Application Support/com.netease.163music",
    "~/Library/Caches/com.netease.163music",
    "~/Library/Containers/com.netease.163music",
    "~/Library/HTTPStorages/com.netease.163music",
    "~/Library/Cookies/com.netease.163music.binarycookies",
    "~/Library/Preferences/com.netease.163music.plist",
    "~/Library/WebKit/com.netease.163music",
    "~/Library/Saved Application State/com.netease.163music.savedState",
  ]
end
