cask "imgotv" do
  version "6.4.3"
  sha256 "26f9e653944b8f5708590dcdfc4e41da588822e59a2c64154f195afe9fb9ba51"

  url "https://download.imgo.tv/app/mac/#{version}/mgtv-mango-#{version.major_minor_patch}.dmg",
      verified: "download.imgo.tv/"
  name "芒果TV"
  desc "Mango TV video app"
  homepage "https://www.mgtv.com/app/"

  livecheck do
    url "https://pcconf.api.mgtv.com/getPcDownloadUrl?source=mango2"
    strategy :header_match
    regex(%r{/v?(\d+(?:\.\d+)+)/mgtv[._-]mango[._-]v?\d+(?:\.\d+)*\.dmg}i)
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
