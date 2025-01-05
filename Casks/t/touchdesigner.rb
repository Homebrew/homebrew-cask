cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2023.12120"
  sha256 arm:   "2742048fcdea142e6f84936f8f0d597fe2869117949811ec206c1293ca1fba0d",
         intel: "0115d835a6cd6e25548694b84b768fa5532f3cc3cc0c7859611788e011ee76b9"

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
