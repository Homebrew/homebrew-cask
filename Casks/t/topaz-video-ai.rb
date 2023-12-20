cask "topaz-video-ai" do
  version "4.0.8"
  sha256 "bb7c4e63df4c3711e685e2246499d7b513034a6435c64603c1c082835862b18f"

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
