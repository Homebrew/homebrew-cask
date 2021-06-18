cask "lepton" do
  version "1.9.2"
  sha256 "a7a73b8cea52f0eed7bd0ae05f113e81937235728aa6416e4ed9a0112fd3b26e"

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
