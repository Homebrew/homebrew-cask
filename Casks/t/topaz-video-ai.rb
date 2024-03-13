cask "topaz-video-ai" do
  version "4.2.1"
  sha256 "3630515513b42335ce79cf0ee022622906227322adf9f54de6ce5d74d62b189d"

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
