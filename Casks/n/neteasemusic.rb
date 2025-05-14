cask "neteasemusic" do
  version "3.0.15.2556"
  sha256 "f3bd9171cf7aa535d1b7adb750dcbf43935860b6d1c4e6ff730e166c44de31b3"

  url "https://d1.music.126.net/dmusic/NeteaseCloudMusic_Music_official_#{version}.dmg",
      verified:   "d1.music.126.net/",
      user_agent: :fake
  name "NetEase cloud music"
  name "网易云音乐"
  desc "Music streaming platform"
  homepage "https://music.163.com/"

  # The upstream download page (https://music.163.com/#/download) uses a POST
  # request to fetch download link information but livecheck doesn't support
  # POST requests yet. Additionally, the request parameters are encrypted in a
  # particular way (see https://github.com/orgs/Homebrew/discussions/5756).
  # That said, the API endpoint appears to work with a simple `GET` request.
  livecheck do
    url "https://music.163.com/api/appcustomconfig/get"
    regex(/NeteaseCloudMusic[._-]Music[._-]official[._-]v?(\d+(?:[._]\d+)+)/i)
    strategy :json do |json, regex|
      json.dig("data", "web-new-download", "osx", "downloadUrl")&.[](regex, 1)
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "NeteaseMusic.app"

  uninstall quit: "com.netease.163music"

  zap trash: [
    "~/Library/Application Support/com.netease.163music",
    "~/Library/Caches/com.netease.163music",
    "~/Library/Containers/com.netease.163music",
    "~/Library/Cookies/com.netease.163music.binarycookies",
    "~/Library/HTTPStorages/com.netease.163music",
    "~/Library/Preferences/com.netease.163music.plist",
    "~/Library/Saved Application State/com.netease.163music.savedState",
    "~/Library/WebKit/com.netease.163music",
  ]
end
