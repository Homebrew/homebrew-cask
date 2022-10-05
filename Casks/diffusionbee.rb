cask "diffusionbee" do
  version "1.1.0"
  sha256 "062a025c2a2b2328760e153eb0124ca87554bb2173a8899a5312f46b7d5689a5"

  url "https://github.com/divamgupta/diffusionbee-stable-diffusion-ui/releases/download/#{version}/DiffusionBee-#{version}-arm64.dmg",
      verified: "github.com/divamgupta/diffusionbee-stable-diffusion-ui"
  name "diffusionbee"
  desc "Run Stable Diffusion locally on your M1 Mac"
  homepage "https://diffusionbee.com/"

  app "DiffusionBee.app"

  zap trash: [
    "~/.diffusionbee",
    "~/Library/Application Support/DiffusionBee",
  ]
end
