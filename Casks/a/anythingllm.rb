cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.6.7"
  sha256 arm:   "e7d800727357213b8017934a1b69c2d7502d548893286577db370bc8db8baf9a",
         intel: "2808a88a2a1a83e34455a7640f24efef073c280bda327c4a17238854cc0a3c3c"

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
