cask "imgotv" do
  version "6.3.4"
  sha256 "58067f7f3acfb686d0a574e8aeb117e12b391ec89f394849eb87e37fba273f7d"

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
