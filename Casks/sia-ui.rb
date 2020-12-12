cask "sia-ui" do
  version "1.5.3"
  sha256 "22ccb8abaf5199e58cb79d556aee10598d25ba13076b3115720282cfcd787a93"

  url "https://sia.tech/releases/Sia-UI-v#{version}.dmg"
  name "Sia-UI"
  desc "Graphical frontend for Sia"
  homepage "https://sia.tech/"

  app "Sia-UI.app"
end
