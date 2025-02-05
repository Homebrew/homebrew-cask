cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.7.3"
  sha256 arm:   "c642ee866d21ec5d6f867c6287de54a32cd4cbfb90aa80e4eee72b4c2d18eca1",
         intel: "c495348c176ba2ba7f8c790dd408be69e3375211294f63c95c8f37090449998a"

  url "https://cdn.anythingllm.com/latest/AnythingLLMDesktop#{arch}.dmg",
      referer: "homebrew-cask"
  name "AnythingLLM"
  desc "Private desktop AI chat application"
  homepage "https://anythingllm.com/"

  livecheck do
    url "https://cdn.anythingllm.com/latest/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "AnythingLLM.app"

  zap trash: "~/Library/Application Support/anythingllm-desktop"
end
