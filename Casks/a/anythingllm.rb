cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.5.6"
  sha256 arm:   "5cdf11130abe8441a31ee12d0309b3183b715c5bd1eeb889c9a58502acfca43d",
         intel: "b8652470e2c53f7b2231038a08fd908d00130d8785e0d8ff2454f0f8a03ba0bb"

  url "https://s3.us-west-1.amazonaws.com/public.useanything.com/latest/AnythingLLMDesktop#{arch}.dmg",
      verified: "s3.us-west-1.amazonaws.com/public.useanything.com/"
  name "AnythingLLM"
  desc "Private desktop AI chat application"
  homepage "https://useanything.com/"

  livecheck do
    url "https://s3.us-west-1.amazonaws.com/public.useanything.com/latest/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "AnythingLLM.app"

  zap trash: "~/Library/Application Support/anythingllm-desktop"
end
