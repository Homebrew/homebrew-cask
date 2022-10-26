cask "diffusionbee" do
  arch arm: "arm64", intel: "intel"

  version "1.4.0"
  sha256 arm:   "d34a5771041828c1525a980f3e03349199cd9186dfa4eaa376829659421402d4",
         intel: "84a0893c125b7803629180f11da26b75b98583f8e2eb39e2abc352991cb9e1ce"

  url "https://github.com/divamgupta/diffusionbee-stable-diffusion-ui/releases/download/#{version}/DiffusionBee-#{version}-#{arch}_SD1.5MPS.dmg",
      verified: "github.com/divamgupta/diffusionbee-stable-diffusion-ui"
  name "Diffusion Bee"
  desc "Run Stable Diffusion locally"
  homepage "https://diffusionbee.com/"

  app "DiffusionBee.app"

  zap trash: [
    "~/.diffusionbee",
    "~/Library/Application Support/DiffusionBee",
  ]
end
