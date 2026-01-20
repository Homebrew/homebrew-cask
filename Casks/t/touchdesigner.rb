cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2025.32280"
  sha256 arm:   "bc2d652763e733ef840c96f202160d666fd36f2bdf450e482c8037e03c70c1d5",
         intel: "3b91e589957b2686d1273b1b9559b42f9b4431e51d19bb2de42aa89f272d5420"

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
