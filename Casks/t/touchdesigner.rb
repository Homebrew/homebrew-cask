cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2025.32460"
  sha256 arm:   "7447df344d6744c3b4f3292a7563a6cb32d9037240851b6edf5460e7eed9897f",
         intel: "9f0faf901bd4614e238d3ec2cb844d618ac080e26e4b18cbbdf65b25779730f8"

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
