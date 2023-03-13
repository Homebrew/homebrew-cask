cask "diffusionbee" do
  arch arm: "arm64", intel: "intel"

  version "1.5.2"
  sha256 arm:   "6166d36ccd4a9a95589a8e2078ec88fa9802a5592bd6125a9db116d81ba4b285",
         intel: "810627dee0bb8772fa9023e9399ea9dcefa01db135404a67d1da0499be1ea7e3"

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
