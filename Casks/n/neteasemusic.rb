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

  # The upstream download page (https://music.163.com/#/download) uses a POST
  # request to fetch download link information but livecheck doesn't support
  # POST requests yet. Additionally, the request parameters are encrypted in a
  # particular way (see https://github.com/orgs/Homebrew/discussions/5756).
  # That said, the API endpoint appears to work with a simple `GET` request.
  livecheck do
    url "https://music.163.com/api/appcustomconfig/get"
    regex(/NeteaseMusic[._-]v?(\d+(?:[._]\d+)+)[._-]web/i)
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
