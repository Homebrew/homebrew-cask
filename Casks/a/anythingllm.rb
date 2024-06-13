cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.5.7"
  sha256 arm:   "66809b298c238e82405813d363988b4fd41bcfd6381d52844896d3dde5da22df",
         intel: "a658341aece9db418f42a026476c6d3281e6f7181aa7c34fbd7a937c3c54cc1c"

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
