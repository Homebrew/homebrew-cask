cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.6.3"
  sha256 arm:   "12c23a85278c831719bfd0c41cb6e18d368fc27d190d8211384b783c4c8e445c",
         intel: "beffec6824fbcac721a8ed15aeb91270c2f780cb8c67c504e823014f78a04860"

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
