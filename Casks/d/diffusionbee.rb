cask "diffusionbee" do
  arch arm: "arm64", intel: "intel"

  version "2.4.4"
  sha256 arm:   "7bb5b5cb8f9e7a2508e1bcd78683efbb276c3928226d9d05e5e5ae118c284513",
         intel: "03e541e211697bb5dae3b86e920569594b8fc262f6ffc4ad31e95c8c25d26faa"

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
