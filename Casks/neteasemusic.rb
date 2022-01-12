cask "neteasemusic" do
  version "2.3.7,868"
  sha256 "a2cd470cdecadc5fc45e5bf8fc7e2778fd3b7e2719c7cd0eae1fadb6a4e20318"

  url "https://d1.music.126.net/dmusic/NeteaseMusic_#{version.csv.first}_#{version.csv.second}_web.dmg",
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
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/NeteaseMusic_(\d+(?:\.\d+)+)_(\d+)_web\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
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
