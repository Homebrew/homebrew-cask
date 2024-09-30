cask "topaz-video-ai" do
  version "5.3.3"
  sha256 "792bb26e8ce24f851d3042ed9b1321a1c5e9254eca0bb44538fedcb6d316746c"

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
