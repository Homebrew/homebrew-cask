cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.7.2"
  sha256 arm:   "e4e16601386a47ed5f4d1408de954fc0ce484734a549e79b72e1b6764f0990e3",
         intel: "d51b33e5a181ddb1ca5128f5f7f90d8a9f8bd64653a729d1a80b44fad5398311"

  url "https://cdn.useanything.com/latest/AnythingLLMDesktop#{arch}.dmg",
      verified: "cdn.useanything.com/"
  name "AnythingLLM"
  desc "Private desktop AI chat application"
  homepage "https://anythingllm.com/"

  livecheck do
    url "https://cdn.useanything.com/latest/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "AnythingLLM.app"

  zap trash: "~/Library/Application Support/anythingllm-desktop"
end
