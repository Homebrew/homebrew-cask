cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.7.0"
  sha256 arm:   "25150b3c1482c731649e97010b4e8ef7e633c23e8fb31465b5dace6a9efb762a",
         intel: "54e25ad287aff795e6b5372f86792fd2d1ce993972b8f7f88a43724a6f0b0c08"

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
