cask "sia-ui" do
  version "1.5.9"
  sha256 "59fbd274f27676e9b8e81db0a6989b49346fc63d45278bda47a82666d7ded92d"

  url "https://sia.tech/releases/Sia-UI-v#{version}.dmg"
  name "Sia-UI"
  desc "Graphical frontend for Sia"
  homepage "https://sia.tech/"

  deprecate! date: "2024-06-26", because: :discontinued

  app "Sia-UI.app"
end
