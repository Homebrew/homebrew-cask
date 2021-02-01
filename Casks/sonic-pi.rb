cask "sonic-pi" do
  version "3.3.1"
  sha256 "ab7ae6784c82ad2ad30c1d79ca8e23f7a207778e99e9827e2917c20c1c6ce8e5"

  url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-x64-v#{version}.dmg"
  appcast "https://github.com/samaaron/sonic-pi/releases.atom"
  name "Sonic Pi"
  desc "Code-based music creation and performance tool"
  homepage "https://sonic-pi.net/"

  app "Sonic Pi.app"
end
