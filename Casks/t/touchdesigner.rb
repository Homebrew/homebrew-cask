cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2023.11880"
  sha256 arm:   "07a6e0711f61effd046069dd20d978c73a6bfdcf2eb9f2864bbfa58a97367422",
         intel: "66e6f7ddd4a48c614bd4926d88009f4edc57fa5901d1b2784e125372ca1e0bf9"

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
