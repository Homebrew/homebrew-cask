cask "cabal" do
  version "6.0.7"
  sha256 "4827aa8a686832fa79a0d08429e10e14d5e6e3a0ea36f453e611cc9ee14da027"

  url "https://github.com/cabal-club/cabal-desktop/releases/download/v#{version}/cabal-desktop-#{version}-mac.dmg",
      verified: "github.com/cabal-club/cabal-desktop/"
  name "Cabal"
  desc "Desktop client for the chat platform Cabal"
  homepage "https://cabal.chat/"

  app "Cabal.app"
end
