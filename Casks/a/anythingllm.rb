cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.6.8"
  sha256 arm:   "bab4931797df929f1609a047402a9cecb9f35ca7ba6a4e6f900055c83b93b204",
         intel: "7b336d237af6af92b0dfec56edaa34602b7d18566560842b3957871fafa7929f"

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
