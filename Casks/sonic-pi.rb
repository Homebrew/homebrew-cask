cask "sonic-pi" do
  version "4.0.1"
  sha256 "ff7e7119644125f1b6c9ab926e2f1d5cbdc2e025e8b4cbc2ab7be58e0015dfca"

  url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-x64-v#{version.dots_to_hyphens}.dmg"
  name "Sonic Pi"
  desc "Code-based music creation and performance tool"
  homepage "https://sonic-pi.net/"

  livecheck do
    url "https://github.com/samaaron/sonic-pi"
    strategy :git
  end

  app "Sonic Pi.app"
end
