cask "sia-ui" do
  version "1.5.0"
  sha256 "89b32387e07aff9d0b31028f6a28b59f10628a9c621943fd0db67fe9add6ece3"

  url "https://sia.tech/releases/Sia-UI-v#{version}.dmg"
  name "Sia-UI"
  desc "Graphical frontend for Sia"
  homepage "https://sia.tech/"

  app "Sia-UI.app"
end
