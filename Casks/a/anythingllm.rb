cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.5.12"
  sha256 arm:   "f972d0724a9ed223f02b090132ba99b97e920f798787f705fbf6b00c4e5a397e",
         intel: "3ab1410b14284469d198c138427b90684580a611fb5b2c5201d6014ac4c7385c"

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
