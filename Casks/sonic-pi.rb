cask "sonic-pi" do
  version "3.3.0"
  sha256 "d55e756a728706e64f8bc98db2dea93e61c3f29e827aa086906704d08ff7a5e1"

  url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-x64-v#{version}.dmg"
  appcast "https://github.com/samaaron/sonic-pi/releases.atom"
  name "Sonic Pi"
  desc "Code-based music creation and performance tool"
  homepage "https://sonic-pi.net/"

  app "Sonic Pi.app"
end
