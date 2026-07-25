cask "gamehub" do
  version "0.8.411"
  sha256 :no_check

  language "en", default: true do
    "en"
  end
  language "zh", "CN" do
    "zh-cn"
  end

  api_region = (language == "zh-cn") ? "cn" : "international"

  url "https://api-#{api_region}-gamehub.xiaoji.com/game/download/mac/#{language}",
      verified: "api-#{api_region}-gamehub.xiaoji.com/"
  name "GameHub"
  desc "Compatibility layer for running Windows and Steam games"
  homepage "https://www.gamemac.com/#{language}"

  livecheck do
    url :url
    strategy :header_match
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "GameHub.app"

  uninstall quit: "GameHub"

  zap trash: [
    "~/Library/Application Scripts/com.gamemac.www.quicklook",
    "~/Library/Application Scripts/com.gamemac.www.thumbnail",
    "~/Library/Application Support/com.gamemac.www",
    "~/Library/Application Support/CrashReporter/GameHub_*.plist",
    "~/Library/Application Support/GameHub",
    "~/Library/Caches/com.gamemac.www",
    "~/Library/Containers/com.gamemac.www.quicklook",
    "~/Library/Containers/com.gamemac.www.thumbnail",
    "~/Library/HTTPStorages/com.gamemac.www.binarycookies",
    "~/Library/Logs/com.gamemac.www",
    "~/Library/Preferences/com.gamemac.www*",
    "~/Library/WebKit/com.gamemac.www",
  ]
end
