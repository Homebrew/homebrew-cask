cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2025.32050"
  sha256 arm:   "e121b6f44dd360cba74745f7cd3c2d9e5c0833725f50bfbfdd5575af9422f542",
         intel: "cc357b2ad5ce7a1c9f289d0986ca393feb1c22cdb761187f2ef2cff8833656d0"

  url "https://download.derivative.ca/TouchDesigner.#{version}.#{arch}.dmg"
  name "Derivative TouchDesigner"
  desc "Tool for creating dynamic digital art"
  homepage "https://derivative.ca/"

  livecheck do
    url "https://docs.derivative.ca/Release_Notes"
    regex(/Build\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :ventura"

  app "TouchDesigner.app"

  zap trash: [
    "~/Library/Application Support/Derivative/TouchDesigner099",
    "~/Library/Saved Application State/ca.derivative.TouchDesigner.savedState",
  ]
end
