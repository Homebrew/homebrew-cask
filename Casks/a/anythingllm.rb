cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.6.1"
  sha256 arm:   "096bff3430f0dc9d3fe585205d36d08a0e6b20758fd7c5acdc37641b9b90b3b5",
         intel: "fff96242ee01520acf7707881fa922fe1c2fe798922329a03cb6ab6a1cc13869"

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
