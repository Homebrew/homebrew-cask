cask "diffusionbee" do
  arch arm: "arm64", intel: "intel"

  version "1.5.1"
  sha256 arm:   "fd4766ac03bc0b9c1095e384349f8b995f44ae60cb5752b1c45ebff2bdacdceb",
         intel: "2d50404e5a433f87c75329b0f3914e4fa93760702f314d7c406467a212e34c9c"

  url "https://github.com/divamgupta/diffusionbee-stable-diffusion-ui/releases/download/#{version}/DiffusionBee-#{version}-#{arch}_MPS_SD1.5_FP16.dmg",
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
