cask "lepton" do
  version "1.9.1"
  sha256 "24f744f97e6746be8f7ebf5c61d1669e9174051fbe8eb2e3cbca8f8f82ec341f"

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
end
