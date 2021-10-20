cask "flipper" do
  version "0.116.0"
  sha256 "0394f4ae42cea24299c10cc3c7f1c11c5cd8d30eddc4b6e85ee03e531305c278"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
