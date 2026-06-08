cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2025.32820"
  sha256 arm:   "012756aa6567241a237ef2bd5a21e4bfebd3e30e12d32d23aea83c84224cf2ce",
         intel: "c88d729af27cbd84b221693ece2c9d497a1b32766bf5929f0f683461ee88a8f4"

  url "https://download.derivative.ca/TouchDesigner.#{version}.#{arch}.dmg"
  name "Derivative TouchDesigner"
  desc "Tool for creating dynamic digital art"
  homepage "https://derivative.ca/"

  livecheck do
    url "https://docs.derivative.ca/Release_Notes"
    regex(/Build\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :ventura

  app "TouchDesigner.app"

  zap trash: [
    "~/Library/Application Support/Derivative/TouchDesigner099",
    "~/Library/Saved Application State/ca.derivative.TouchDesigner.savedState",
  ]
end
