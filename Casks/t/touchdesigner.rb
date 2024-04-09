cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2023.11600"
  sha256 arm:   "5f603362a9192c60c5b3de61f00cc7d01021998935987743d9a375976a4573e4",
         intel: "0fd39f61ccaaa0ee0d414713c7b909b211ee627f6dddc9a82019695f9e870ee1"

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
