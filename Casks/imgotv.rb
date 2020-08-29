cask "imgotv" do
  version "6.3.3"
  sha256 "f7a70991b71484551ac345a83cca483daa5f3c899f5a78408fdd2fae3e27eabf"

  # download.imgo.tv/ was verified as official when first introduced to the cask
  url "https://download.imgo.tv/app/mac/#{version}/mgtv-mango-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?user_agent=Mac%20OS%20X&url=https://pcconf.api.mgtv.com/getPcDownloadUrl?source=mango2"
  name "芒果TV"
  homepage "https://www.mgtv.com/app/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "芒果TV.app"

  zap trash: [
    "~/Library/Preferences/com.hunantv.osx.imgotv.plist",
    "~/Library/Caches/com.hunantv.LaunchAtLoginHelper",
    "~/Library/Saved Application State/com.hunantv.osx.imgotv.savedState",
    "~/Library/Caches/com.hunantv.osx.imgotv",
    "~/Library/Caches/Imgotv-Mac",
    "~/Library/Logs/Imgotv-Mac",
  ]
end
