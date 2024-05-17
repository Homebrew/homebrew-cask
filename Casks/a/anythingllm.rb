cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.5.5"
  sha256 arm:   "11dbb7e8bd379b94833a55ef838cbd62b63a9f7e2660d023e67927f2f78914b7",
         intel: "3fb444b00a0178db2f5b40b4fd832c9cee4fa3e55cbf9ece851ffe9dc711f988"

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
