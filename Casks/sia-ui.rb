cask "sia-ui" do
  version "1.5.1"
  sha256 "79d7faefa05e32d7b48fb4efac238b90a96020a537ac9e48211dcb47c76cd5e0"

  url "https://sia.tech/releases/Sia-UI-v#{version}.dmg"
  name "Sia-UI"
  desc "Graphical frontend for Sia"
  homepage "https://sia.tech/"

  app "Sia-UI.app"
end
