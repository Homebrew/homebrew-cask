cask "neteasemusic" do
  arch arm: "_arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"

  version "3.1.11,3415"
  sha256 arm:   "4d4e08e4b794a36a4e061d159b9d9e731ffae3fe76bb8b3623c90e5f0d29e4c4",
         intel: "326812d1d7f1bdfebd64be6cfe5c465191ad3abbe8ac1831ad2055e8c6a57791"

  url "https://d1.music.126.net/dmusic/NeteaseCloudMusic_Music_official_#{version.csv.join(".")}#{arch}.dmg",
      verified:   "d1.music.126.net/",
      user_agent: :fake
  name "NetEase cloud music"
  name "网易云音乐"
  desc "Music streaming platform"
  homepage "https://music.163.com/"

  livecheck do
    url "https://music.163.com/api/mac/package/download/latest?arch=#{livecheck_arch}&productName=music"
    strategy :json do |json|
      version = json.dig("data", "appVer")
      build = json.dig("data", "buildVer")
      next if version.blank? || build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on :macos

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
