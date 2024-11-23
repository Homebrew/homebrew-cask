cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.6.11"
  sha256 arm:   "abde60086548918a8aaf1c84b7e0052167e09668eb7bac43c999fc21677653df",
         intel: "11ebd573d9d24154d5d8365988914f9b1188b3ab1e3997537fae86fe53875e56"

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
