cask "diffusionbee" do
  arch arm: "arm64", intel: "intel"

  version "2.2.1"
  sha256 arm:   "a5fdc6dc1c61de09d61e3156bc6f511e876050f34fa3a180d3ec08bce6b64454",
         intel: "ee005b4e4c3e6368444321fcb3f98873c830518cf0e21ae3afa4103503b99a0f"

  url "https://github.com/divamgupta/diffusionbee-stable-diffusion-ui/releases/download/#{version}/DiffusionBee_MPS_#{arch}-#{version}.dmg",
      verified: "github.com/divamgupta/diffusionbee-stable-diffusion-ui/"
  name "Diffusion Bee"
  desc "Run Stable Diffusion locally"
  homepage "https://diffusionbee.com/"

  app "DiffusionBee.app"

  zap trash: [
    "~/.diffusionbee",
    "~/Library/Application Support/DiffusionBee",
  ]
end
