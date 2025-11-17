cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2025.31740"
  sha256 arm:   "fcd66bbf38bd728da689f4f5a2c5ea0231226da903e3fdc47372502fd4ff8ad7",
         intel: "e696cf2b2cc90c05f96f143a29a49b89743f6ed1475b86cae43acb7f3cbd0b65"

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
