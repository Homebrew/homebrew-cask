cask "sia-ui" do
  version "1.5.8"
  sha256 "45e8b60f1b5a27a87e60c230fef7cf9ef3b728ec02439b508c9443b1f2a788a0"

  url "https://sia.tech/releases/Sia-UI-v#{version}.dmg"
  name "Sia-UI"
  desc "Graphical frontend for Sia"
  homepage "https://sia.tech/"

  livecheck do
    skip "No version information available"
  end

  app "Sia-UI.app"
end
