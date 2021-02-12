cask "cabal" do
  version "6.0.6"
  sha256 "ff2a31c5383c6e16e1fc79b0d1ce6feaf5884c371bce4846b3bd837a6d0f833f"

  url "https://github.com/cabal-club/cabal-desktop/releases/download/v#{version}/cabal-desktop-#{version}-mac.dmg",
      verified: "github.com/cabal-club/cabal-desktop/"
  appcast "https://github.com/cabal-club/cabal-desktop/releases.atom"
  name "Cabal"
  desc "Desktop client for the chat platform Cabal"
  homepage "https://cabal.chat/"

  app "Cabal.app"
end
