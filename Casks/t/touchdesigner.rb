cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2023.12000"
  sha256 arm:   "92548ddda89fd997cfe4f986adbde57993fd6cdece4fccdef51b9753389b9d44",
         intel: "de6cd823f04eb07d7931c352bc93ae1b066254c79f4447eb1aa397c7411e1e4f"

  url "https://download.derivative.ca/TouchDesigner.#{version}.#{arch}.dmg"
  name "Derivative TouchDesigner"
  desc "Tool for creating dynamic digital art"
  homepage "https://derivative.ca/"

  livecheck do
    url "https://docs.derivative.ca/Release_Notes"
    regex(/Build\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  app "TouchDesigner.app"

  zap trash: [
    "~/Library/Application Support/Derivative/TouchDesigner099/",
    "~/Library/Saved Application State/ca.derivative.TouchDesigner.savedState/",
  ]
end
