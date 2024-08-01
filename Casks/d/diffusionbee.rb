cask "diffusionbee" do
  arch arm: "arm64", intel: "intel"

  version "2.5.1"
  sha256 arm:   "f11d9ba5563ea8c3ed3bdd20ca033e7fb56e85496e0110d89889f51d8f168dea",
         intel: "260a8030445dcca5bf07bc084e24f5f3c3618458e8adcb6ffe1c5f72083ccd60"

  url "https://github.com/divamgupta/diffusionbee-stable-diffusion-ui/releases/download/#{version}/DiffusionBee_MPS_#{arch}-#{version}.dmg",
      verified: "github.com/divamgupta/diffusionbee-stable-diffusion-ui/"
  name "Diffusion Bee"
  desc "Run Stable Diffusion locally"
  homepage "https://diffusionbee.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "DiffusionBee.app"

  zap trash: [
    "~/.diffusionbee",
    "~/Library/Application Support/DiffusionBee",
  ]
end
