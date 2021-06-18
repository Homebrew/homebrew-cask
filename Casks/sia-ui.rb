cask "sia-ui" do
  version "1.5.6"
  sha256 "fc45e726130ec43026c3ec556290c8b86bfac8fb13e3bc14bde3a1dbf7370e49"

  url "https://sia.tech/releases/Sia-UI-v#{version}.dmg"
  name "Sia-UI"
  desc "Graphical frontend for Sia"
  homepage "https://sia.tech/"

  livecheck do
    skip "No version information available"
  end

  app "Sia-UI.app"
end
