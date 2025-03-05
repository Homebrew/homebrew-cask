cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2023.12230"
  sha256 arm:   "0fa0d49613f09e7a3c5d7546c2b0e9036a0412f682fe252f35749692e68f45d3",
         intel: "0212e49c89bc929c8e9f0c1cb83e453313c201bca71ebf741a19a7f3afd8f7d0"

  url "https://download.derivative.ca/TouchDesigner.#{version}.#{arch}.dmg"
  name "Derivative TouchDesigner"
  desc "Tool for creating dynamic digital art"
  homepage "https://derivative.ca/"

  livecheck do
    url "https://docs.derivative.ca/Release_Notes"
    regex(/Build\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :catalina"

  app "TouchDesigner.app"

  zap trash: [
    "~/Library/Application Support/Derivative/TouchDesigner099/",
    "~/Library/Saved Application State/ca.derivative.TouchDesigner.savedState/",
  ]
end
