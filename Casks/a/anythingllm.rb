cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.6.9"
  sha256 arm:   "cff46b5166925f42058a84c8f8d2cd913cc3f510ae37bd1c6bbcf9cc2279cd0e",
         intel: "af6a785cc91b97b8eb87edc67e661228d2a52821bf3e3fb6fb3aa94082c89c05"

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
