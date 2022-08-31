cask "sonic-pi" do
  version "4.1.0"
  sha256 "cf3cee887ddfe9e436b48167116e17e21a1b57fbce685697fc77b0736305d67a"

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
