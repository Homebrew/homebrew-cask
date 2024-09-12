cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.6.6"
  sha256 arm:   "15fbef13837a621c9fd9fe3828b0436b1abc8e901e0483433c7ab4c31820fc87",
         intel: "0f097fd8f23315340af114fe9c85e9d392e05438f49612797d82493c3c2651c0"

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
