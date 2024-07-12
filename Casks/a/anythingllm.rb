cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.5.9"
  sha256 arm:   "abdf5a7c22df20768e9c311debf71b563ba62f1a285684da4fa713123822f3f3",
         intel: "63769bb80bbaeb2216bacccef8e4c9098023ba009d522368509cf87de970e292"

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
