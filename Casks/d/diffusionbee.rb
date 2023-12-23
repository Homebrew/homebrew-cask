cask "diffusionbee" do
  arch arm: "arm64", intel: "intel"

  version "2.4.3"
  sha256 arm:   "a924f3f66fb8cba6a70ebe7199637d6000dff2afa058f37ba6c4585aace6cc82",
         intel: "15f9d76f9badb3e2ea5f913acc8808ab43e956dabc9e0e898b17db7d9b3381dc"

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
