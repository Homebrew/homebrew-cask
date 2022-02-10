cask "imgotv" do
  version "6.4.4"
  sha256 "e58eea277418b7353adb338e81de64f9ab2767f3e5f98fb7e75553f9599ca52c"

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
    "~/Library/Caches/com.hunantv.LaunchAtLoginHelper",
    "~/Library/Caches/com.hunantv.osx.imgotv",
    "~/Library/Caches/Imgotv-Mac",
    "~/Library/Logs/Imgotv-Mac",
    "~/Library/Preferences/com.hunantv.osx.imgotv.plist",
    "~/Library/Saved Application State/com.hunantv.osx.imgotv.savedState",
  ]
end
