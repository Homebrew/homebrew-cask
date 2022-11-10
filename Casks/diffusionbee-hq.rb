cask "diffusionbee-hq" do
  version "1.4.3"
  sha256 "be6a9c92aa4e17cc9c030991ecbe3c3afea8959ff7c986cb97feec2aaead4946"

  url "https://github.com/divamgupta/diffusionbee-stable-diffusion-ui/releases/download/#{version}/DiffusionBee-#{version}-arm64_TF_SD1.4_FP32.dmg",
      verified: "github.com/divamgupta/diffusionbee-stable-diffusion-ui"
  name "Diffusion Bee"
  desc "Run Stable Diffusion locally. HQ Version for Apple Silicon."
  homepage "https://diffusionbee.com/"

  depends_on arch: :arm64

  app "DiffusionBee.app"

  conflicts_with cask: "diffusionbee"

  zap trash: [
    "~/.diffusionbee",
    "~/Library/Application Support/DiffusionBee",
  ]
end
