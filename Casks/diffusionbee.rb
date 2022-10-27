cask "diffusionbee" do
  arch arm: "arm64", intel: "intel64"

  version "1.4.2"
  sha256 arm:   "baabdcdcf0bc173ef9e96e6b4bb3f859127889c038e5c0c564450ec71cb0bd83",
         intel: "3b57e73ba5c23ed11ec844d6c2b8b732a0eba7cbdb49338d90d997d151be4d90"

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
