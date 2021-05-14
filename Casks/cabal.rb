cask "cabal" do
  version "6.0.8"
  sha256 "220966a9d873ee5103a7ff6c5bb21a52ba789e9cfea981ef68e90e0afed91484"

  url "https://github.com/cabal-club/cabal-desktop/releases/download/v#{version}/cabal-desktop-#{version}-mac.dmg",
      verified: "github.com/cabal-club/cabal-desktop/"
  name "Cabal"
  desc "Desktop client for the chat platform Cabal"
  homepage "https://cabal.chat/"

  app "Cabal.app"
end
