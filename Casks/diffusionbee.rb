cask "diffusionbee" do
  version "1.3.1"
  sha256 "bc7995d2ad125fd4900994f5c15e553af6efbbdfbf6104f06e92190c8c27ce3a"

  url "https://github.com/divamgupta/diffusionbee-stable-diffusion-ui/releases/download/#{version}/DiffusionBee-#{version}-arm64.dmg",
      verified: "github.com/divamgupta/diffusionbee-stable-diffusion-ui"
  name "Diffusion Bee"
  desc "Run Stable Diffusion locally"
  homepage "https://diffusionbee.com/"

  depends_on arch: :arm64

  app "DiffusionBee.app"

  zap trash: [
    "~/.diffusionbee",
    "~/Library/Application Support/DiffusionBee",
  ]
end
