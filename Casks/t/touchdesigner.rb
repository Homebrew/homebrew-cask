cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2025.33060"
  sha256 arm:   "0ea5889a49639277083a568894957f28bb02b9827207f7be09c42c5eb1317114",
         intel: "d1eed2a507a80ea21030bf0dfa9b159e6da39f62d70bf12fbccb6fe748edbec0"

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
