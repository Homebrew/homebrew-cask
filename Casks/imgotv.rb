cask "imgotv" do
  version "6.4.0"
  sha256 "e0bae3b87de6919a6d845989ea23451f68328645094cb81984307502cb2ef23e"

  url "https://download.imgo.tv/app/mac/#{version}/mgtv-mango-#{version}.dmg",
      verified: "download.imgo.tv/"
  name "芒果TV"
  homepage "https://www.mgtv.com/app/"

  livecheck do
    url "https://pcconf.api.mgtv.com/getPcDownloadUrl?source=mango2"
    strategy :header_match
  end

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
