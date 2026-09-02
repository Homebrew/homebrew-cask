cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2025.33230"
  sha256 arm:   "d53e49b0e7ade48ddfeda6cf7dd7f6baeb249266691692279c2122f4e05c62fd",
         intel: "ab54a8c69f58befa472ee97a7b34877d8bae8a088f55affb5e2dfa80dbe2b53e"

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
