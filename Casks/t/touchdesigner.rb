cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2023.12480"
  sha256 arm:   "aa86ad2513ada2a5e8fad8cd1496cb802d5a6fe46c859bdc751197972614be92",
         intel: "e664d362149381939c2722276459fd82970c675c55c27ec1a2f7e9ef34c1acc5"

  url "https://download.derivative.ca/TouchDesigner.#{version}.#{arch}.dmg"
  name "Derivative TouchDesigner"
  desc "Tool for creating dynamic digital art"
  homepage "https://derivative.ca/"

  livecheck do
    url "https://docs.derivative.ca/Release_Notes"
    regex(/Build\s+(\d+(?:\.\d+)+)/i)
  end

  app "TouchDesigner.app"

  zap trash: [
    "~/Library/Application Support/Derivative/TouchDesigner099",
    "~/Library/Saved Application State/ca.derivative.TouchDesigner.savedState",
  ]
end
