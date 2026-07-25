cask "lepton" do
  arch arm: "arm64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "e5a783fd960438af176ad2b79c5687371cbb985f49c13cdfea695fd5df0e8115",
         intel: "4c7e11a3af18362d20a7cfaefe9da585271ae36e4c5ba69b080409acedae9ba8"

  url "https://github.com/hackjutsu/Lepton/releases/download/v#{version}/Lepton-#{version}-mac-#{arch}.dmg",
      verified: "github.com/hackjutsu/Lepton/"
  name "Lepton"
  desc "Snippet management app"
  homepage "https://hackjutsu.com/Lepton/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "Lepton.app"

  zap trash: [
    "~/Library/Application Support/Lepton",
    "~/Library/Preferences/com.cosmox.lepton.helper.plist",
    "~/Library/Preferences/com.cosmox.lepton.plist",
    "~/Library/Saved Application State/com.cosmox.lepton.savedState",
  ]
end
