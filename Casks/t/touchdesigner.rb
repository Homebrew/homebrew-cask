cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2025.32260"
  sha256 arm:   "920232ac4b6b4ed5c0f9db1276feb6323f823d282c0626a7366d1a64395bdbab",
         intel: "43855d64b97ee314bf65c3dd7c113ce9b8907c852bd78354590c86a080a8e418"

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
