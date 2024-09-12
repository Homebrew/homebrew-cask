cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.6.5"
  sha256 arm:   "ec70650ff1d4d5cb0dc415bbcfb2b9c8765303077ff10fc6d348ceb813b95e0a",
         intel: "6d77b47baaaffcb967ee00c7593624a71eb3ac71fb36b3aa26f2e896d994f99b"

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
