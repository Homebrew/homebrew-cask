cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.6.10"
  sha256 arm:   "915ab07c2441ee68c28106286dfbe0670453916009fd36ce2affcf22f4e991a2",
         intel: "a9a2023e35fcf0dbcc92497686d06f70514c7cb567ffc8380d142062f6829faa"

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
