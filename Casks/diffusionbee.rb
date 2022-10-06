cask "diffusionbee" do
  version "1.1.0"
  sha256 "062a025c2a2b2328760e153eb0124ca87554bb2173a8899a5312f46b7d5689a5"

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
