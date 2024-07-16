cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.5.10"
  sha256 arm:   "cd947c3e9e3b1a0352cc4450b4879aa241de6f6498b2bcaeea1735be57ed8d9f",
         intel: "e49fac4c9073cc65b86194a9567ecf48b024a33dee37c586109bb74d60f26712"

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
