cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.5.4"
  sha256 arm:   "19a01db61dfeec3bf37ec70bb6e6df3810529f09463e667aa6c8a946d17f4c32",
         intel: "141525b513bed1ddeb22bc217cb9547967f7dbf1d4cc364e60456039b7d9f3ef"

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
