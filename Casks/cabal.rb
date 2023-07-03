cask "cabal" do
  version "7.0.0"
  sha256 "8ff53b89cc99e443616ab5b68f1b588ae4f64a4bd1cc6783239aace0cb8a5ac3"

  url "https://github.com/cabal-club/cabal-desktop/releases/download/v#{version}/cabal-desktop-#{version}-mac.dmg",
      verified: "github.com/cabal-club/cabal-desktop/"
  name "Cabal"
  desc "Desktop client for the chat platform Cabal"
  homepage "https://cabal.chat/"

  app "Cabal.app"

  zap trash: [
    "~/.cabal-desktop",
    "~/Library/Application Support/Cabal",
    "~/Library/Preferences/club.cabal.desktop.plist",
    "~/Library/Saved Application State/club.cabal.desktop.savedState",
  ]
end
