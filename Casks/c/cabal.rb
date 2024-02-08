cask "cabal" do
  version "8.0.0"
  sha256 "bb62f21d9dc51b31c9fcc4d5a7bc48898270cfd62059efb4265f413093d5050d"

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
