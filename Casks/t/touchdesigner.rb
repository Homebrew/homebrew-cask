cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2025.33070"
  sha256 arm:   "7a71ddcf02c4a11350623dc30823b2603e7aeef8d04ba6f8e87d9aac27882575",
         intel: "b0b1a4d64f9878bf4e1304925bc651fc7b88727d540ba3f2d9999fa49bf50eda"

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
