cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2023.11760"
  sha256 arm:   "38b925f77e3c23e15d7de25a45aa2c2a25bfd277b886de4e5a32ea3875a30f1a",
         intel: "3dbd08932202b0e71c5d3864b2d7957641a5654477af3f7a4006e000bfdc3c31"

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
