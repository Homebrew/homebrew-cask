cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2023.11510"
  sha256 arm:   "5a77b6d733be88b6faea42202c14d9358771c70533afe854850d52244c98a516",
         intel: "9c83f8a245c259b70bdf379ea15b29404bbcf6c080adbeaca273289b0abc9e13"

  url "https://download.derivative.ca/TouchDesigner.#{version}.#{arch}.dmg"
  name "Derivative TouchDesigner"
  desc "Tool for creating dynamic digital art"
  homepage "https://derivative.ca/"

  livecheck do
    skip "No reliable way to get version info"
  end

  depends_on macos: ">= :mojave"

  app "TouchDesigner.app"

  zap trash: [
    "~/Library/Application Support/Derivative/TouchDesigner099/",
    "~/Library/Saved Application State/ca.derivative.TouchDesigner.savedState/",
  ]
end
