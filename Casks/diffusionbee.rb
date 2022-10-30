cask "diffusionbee" do
  arch arm: "arm64", intel: "intel"

  version "1.4.3"
  sha256 arm:   "c654f76b60632d8714c41688625a505f56acac88daf41d27d8dd2fc0d4fb0389",
         intel: "70cb545cf923756a2b6e92d962c620bb2db984bf01398e2a053ba7293d59e40a"

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
