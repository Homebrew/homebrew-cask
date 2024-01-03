cask "topaz-video-ai" do
  version "4.0.9"
  sha256 "a50d05a3d53769f9d8ad9dcd47cd01c49517bbe441e42cf5ac807e3beb890b4f"

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
