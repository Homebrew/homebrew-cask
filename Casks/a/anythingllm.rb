cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.6.0"
  sha256 arm:   "c596e2e121ab10c12b4b0ab2156e00300cbf5e7954c62b7009a70f049deb18c8",
         intel: "fb7e92dbf245cf7dd49ec6a55b7599078796a3e0892953907f061601ce19e7cd"

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
