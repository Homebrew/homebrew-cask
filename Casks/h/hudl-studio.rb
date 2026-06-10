cask "hudl-studio" do
  version "2.2.8"
  sha256 "bc6badd9f43ff00d9903f14936fc6b9bdb409b45a09cd69db7c54a048d3b67e3"

  url "https://studio-releases.s3.amazonaws.com/Studio-#{version}.dmg",
      verified: "studio-releases.s3.amazonaws.com/"
  name "Hudl Studio"
  desc "Creates animated sports graphics and telestration for video"
  homepage "https://www.hudl.com/downloads/elite"

  livecheck do
    url "https://studio-releases.s3.amazonaws.com/?list-type=2"
    regex(/Key>Studio-(\d+(?:\.\d+)+)\.dmg</i)
    strategy :page_match
  end

  depends_on macos: :catalina

  app "Studio.app"

  zap trash: [
    "~/Library/Caches/com.hudl.hudl-graphx",
    "~/Library/HTTPStorages/com.hudl.hudl-graphx",
    "~/Library/Preferences/com.hudl.hudl-graphx.plist",
    "~/Library/Saved Application State/com.hudl.hudl-graphx.savedState",
  ]
end
