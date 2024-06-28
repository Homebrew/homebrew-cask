cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.5.8"
  sha256 arm:   "816797207043cb1d8eeb8ce13f37a38252d774d84c773ce28b964d921deb533e",
         intel: "3aa886db87116209630caac3d408d9903fc2dd3b2752baa65dbe27b94cdb2654"

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
