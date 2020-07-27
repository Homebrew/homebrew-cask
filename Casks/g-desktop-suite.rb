cask "g-desktop-suite" do
  version "0.3.1"
  sha256 "461c5d19149a088981f8f7a87148cda1762458b7c64d59e1ec5062106eb8ad90"

  url "https://github.com/alexkim205/g-desktop-suite/releases/latest/download/G-Desktop-Suite-#{version}.dmg"
  appcast "https://github.com/alexkim205/g-desktop-suite/releases.atom"
  name "G Desktop Suite"
  homepage "https://github.com/alexkim205/g-desktop-suite"

  app "G Desktop Suite.app"
end
