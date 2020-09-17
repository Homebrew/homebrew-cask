cask "cabal" do
  version "6.0.5"
  sha256 "0361917bfdabc760037ae64cb3dc20e38f7c879666b963d3c33056e77da8af77"

  # github.com/cabal-club/cabal-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/cabal-club/cabal-desktop/releases/download/v#{version}/cabal-desktop-#{version}-mac.dmg"
  appcast "https://github.com/cabal-club/cabal-desktop/releases.atom"
  name "Cabal"
  desc "Desktop client for the chat platform Cabal"
  homepage "https://cabal.chat/"

  app "Cabal.app"
end
