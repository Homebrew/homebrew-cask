cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2023.12370"
  sha256 arm:   "e71e38e73b4a8a414dad7d0fc62f96f944e605744147d4d4a273a3fc00ebe4a0",
         intel: "1061d0f2ee127abb4c6fd68a0f40c24ea3bb1a53edcba3d71bfab39469e55717"

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
    "~/Library/Application Support/Derivative/TouchDesigner099",
    "~/Library/Saved Application State/ca.derivative.TouchDesigner.savedState",
  ]
end
