cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.7.1"
  sha256 arm:   "5e3b9a406aa22b3a3d278fc0c27b95fec34fff33d4b65c1c7c58ffa9d22f588d",
         intel: "a067a5bdcd7995b5946b019554685b3ad46117ed613a04b0641ec42fcfa5d59f"

  url "https://s3-us-west-1.amazonaws.com/public.useanything.com/latest/AnythingLLMDesktop#{arch}.dmg",
      verified: "s3-us-west-1.amazonaws.com/public.useanything.com/"
  name "AnythingLLM"
  desc "Private desktop AI chat application"
  homepage "https://useanything.com/"

  livecheck do
    url "https://s3-us-west-1.amazonaws.com/public.useanything.com/latest/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "AnythingLLM.app"

  zap trash: "~/Library/Application Support/anythingllm-desktop"
end
