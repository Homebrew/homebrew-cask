cask "diffusionbee" do
  version "0.3.0"
  sha256 "94a029d96affa10508f16223d43102b32c3e6dccb21c14e86f06a5cf4679e8eb"

  url "https://github.com/divamgupta/diffusionbee-stable-diffusion-ui/releases/download/#{version}/DiffusionBee-#{version}-arm64.dmg",
      verified: "github.com/divamgupta/diffusionbee-stable-diffusion-ui/"
  name "DiffusionBee"
  desc "Stable diffusion GUI app"
  homepage "https://diffusionbee.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "DiffusionBee.app"

  zap trash: [
    "~/Library/Application Support/DiffusionBee",
    "~/.diffusionbee",
  ]
end
