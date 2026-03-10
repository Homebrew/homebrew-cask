cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2025.32440"
  sha256 arm:   "e13958e01f2b4efdf8bee6197d0234fcb1cc14e3d9e14f5b3f6a00a9f3da13f7",
         intel: "1cf94731eefdbed2277d2d8f744421aafe70e14f3bbdfc2d7b266d39e16209fd"

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
