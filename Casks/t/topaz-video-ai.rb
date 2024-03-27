cask "topaz-video-ai" do
  version "4.2.2"
  sha256 "7acfe62de9d8a467833de68ef2f8c5f27973d4311ff1b447175e33adccfeb6b1"

  url "https://downloads.topazlabs.com/deploy/TopazVideoAI/#{version}/TopazVideoAI-#{version}.dmg"
  name "Topaz Video AI"
  desc "Video upscaler and quality enhancer"
  homepage "https://www.topazlabs.com/topaz-video-ai"

  livecheck do
    url "https://community.topazlabs.com/c/video-ai/video-ai-releases/69"
    regex(/>Topaz\sVideo\sAI\sv?(\d+(?:\.\d+)+)\s*</i)
  end

  app "Topaz Video AI.app"

  zap trash: [
    "~/Library/Preferences/com.topazlabs.Topaz-Video-AI.plist",
    "~/Library/Saved Application State/com.topazlabs.Topaz-Video-AI.savedState",
  ]
end
