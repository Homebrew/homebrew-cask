cask "topaz-video-ai" do
  version "3.5.3"
  sha256 "26156c36203b6ccc4b3889e2867c7654f7466d059ca8f06e6e09d729766008e5"

  url "https://downloads.topazlabs.com/deploy/TopazVideoAI/#{version}/TopazVideoAI-#{version}.dmg"
  name "Topaz Video AI"
  desc "Video upscaler and quality enhancer"
  homepage "https://www.topazlabs.com/topaz-video-ai"

  livecheck do
    url "https://topazlabs.com/d/tvai/latest/mac/full"
    strategy :header_match
  end

  app "Topaz Video AI.app"

  zap trash: [
    "~/Library/Preferences/com.topazlabs.Topaz-Video-AI.plist",
    "~/Library/Saved Application State/com.topazlabs.Topaz-Video-AI.savedState",
  ]
end
