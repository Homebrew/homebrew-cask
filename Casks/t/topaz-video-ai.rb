cask "topaz-video-ai" do
  version "5.0.3"
  sha256 "ea343a18cff3ec93b36f1979e23e375afccf2cbbe89a100e915a41e806c03467"

  url "https://downloads.topazlabs.com/deploy/TopazVideoAI/#{version}/TopazVideoAI-#{version}.dmg"
  name "Topaz Video AI"
  desc "Video upscaler and quality enhancer"
  homepage "https://www.topazlabs.com/topaz-video-ai"

  # The version for some releases is missing the last digit, so we add ".0"
  # to the end in these cases
  livecheck do
    url "https://community.topazlabs.com/c/video-ai/video-ai-releases/69"
    regex(/>Topaz\sVideo\sAI\sv?(\d+(?:\.\d+)+)\s*</i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        version = match[0]
        next version if version.split(".").length >= 3

        "#{version}.0"
      end
    end
  end

  app "Topaz Video AI.app"

  zap trash: [
    "~/Library/Preferences/com.topazlabs.Topaz-Video-AI.plist",
    "~/Library/Saved Application State/com.topazlabs.Topaz-Video-AI.savedState",
  ]
end
