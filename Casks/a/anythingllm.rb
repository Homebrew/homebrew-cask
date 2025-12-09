cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.9.1"
  sha256 :no_check

  url "https://cdn.anythingllm.com/latest/AnythingLLMDesktop#{arch}.dmg",
      referer: "homebrew-cask"
  name "AnythingLLM"
  desc "Private desktop AI chat application"
  homepage "https://anythingllm.com/"

  livecheck do
    url "https://cdn.anythingllm.com/latest/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  app "AnythingLLM.app"

  zap trash: "~/Library/Application Support/anythingllm-desktop"
end
