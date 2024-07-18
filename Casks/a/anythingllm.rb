cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.5.11"
  sha256 arm:   "54bcd78f3043efb33c1548992d2f3f9208b5f6636dda65322e4b7047b29bd46f",
         intel: "9dc26996c726ca24403ac79945fb7ff71a58bd0ec9b90f2ec93a46045f20047b"

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
