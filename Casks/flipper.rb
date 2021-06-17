cask "flipper" do
  version "0.94.1"
  sha256 "80fd9a921d0e54cca829e75bb94868131f03e885ad50f83838546b65ae0f5c4c"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
