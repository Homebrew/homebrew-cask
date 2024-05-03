cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.5.3"
  sha256 arm:   "04ed1f683c6545a5fd02de03215dbc586af2efcaa1f81dcda711ce08eed16793",
         intel: "929aa6a621190f42b841d2adb252034bc1ab174e0b2d5527779fffb5f4e5f975"

  url "https://s3.us-west-1.amazonaws.com/public.useanything.com/latest/AnythingLLMDesktop#{arch}.dmg",
      verified: "s3.us-west-1.amazonaws.com/public.useanything.com/"
  name "AnythingLLM"
  desc "Private desktop AI chat application"
  homepage "https://useanything.com/"

  livecheck do
    url "https://s3.us-west-1.amazonaws.com/public.useanything.com/latest/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "AnythingLLM.app"

  zap trash: "~/Library/Application Support/anythingllm-desktop"
end
