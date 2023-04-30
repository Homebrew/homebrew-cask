cask "diffusionbee" do
  arch arm: "arm64", intel: "intel"

  version "1.7.4"
  sha256 arm:   "80b26b75f0cb426dad8fc6608eee358c9a5b89945e39b1eb2d423573a5f0defc",
         intel: "7696f034349693224772905d53215f813e411990284df96a2d0afbd072a0b45d"

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
