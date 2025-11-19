cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2025.31760"
  sha256 arm:   "310d7ec283753901094e1c9beaaaa4f0be65bf01aa1b2644830260d8e32e1c77",
         intel: "5fc3fc145b88f2fdbd0933792502ff94dbcec332eb7e247e894dfc20330177ae"

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
