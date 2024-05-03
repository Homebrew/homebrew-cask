cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.5.2"
  sha256 arm:   "9118325e888a141a1c5b50c7c9a819f08f9541466987b165d65e58da3bb1a6c9",
         intel: "bf2ec9039768397cb0778bb1f57e1d9190961c7b37e3d297ea1b6f7d7b59c142"

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
