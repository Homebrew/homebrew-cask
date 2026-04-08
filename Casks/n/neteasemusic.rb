cask "neteasemusic" do
  version "3.1.6,3242"
  sha256 "c47919f1e2799cdfffc2aacc6d6c4c92d9fa371439046a339a4b1dc132e9691c"

  url "https://d1.music.126.net/dmusic/NeteaseCloudMusic_Music_official_#{version.csv.join(".")}.dmg",
      verified:   "d1.music.126.net/",
      user_agent: :fake
  name "NetEase cloud music"
  name "网易云音乐"
  desc "Music streaming platform"
  homepage "https://music.163.com/"

  livecheck do
    url "https://music.163.com/api/mac/package/download/latest?arch=arm64&productName=music"
    strategy :json do |json|
      version = json.dig("data", "appVer")
      build = json.dig("data", "buildVer")
      next if version.blank? || build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true

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
