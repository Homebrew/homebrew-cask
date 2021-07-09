cask "imgotv" do
  version "6.4.2.2"
  sha256 "c3bc81a8ec0b85ab18f706323e7355ccf5bbc8bd3c04131a7930c78eac42c45f"

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
