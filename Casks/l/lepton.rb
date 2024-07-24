cask "lepton" do
  version "1.10.0"
  sha256 "060071b6b2c3e52e0be04e6f118d77fbcc7afdae50895545bfda0b04b9cc1c12"

  url "https://github.com/hackjutsu/Lepton/releases/download/v#{version}/Lepton-#{version}.dmg",
      verified: "github.com/hackjutsu/Lepton/"
  name "Lepton"
  desc "Snippet management app"
  homepage "https://hackjutsu.com/Lepton/"

  app "Lepton.app"

  zap trash: [
    "~/Library/Application Support/Lepton",
    "~/Library/Preferences/com.cosmox.lepton.helper.plist",
    "~/Library/Preferences/com.cosmox.lepton.plist",
    "~/Library/Saved Application State/com.cosmox.lepton.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
