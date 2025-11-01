cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2025.31550"
  sha256 arm:   "cee4192e5dbd3b0448136ef38c11dc7e96aca55f2e11b9a78acae878f153fed4",
         intel: "4db0b0de31a5fb3dfa95aec194e366091105d8be004ed86cc69f3b4eefa4f0e1"

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
