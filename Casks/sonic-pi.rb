cask "sonic-pi" do
  version "4.0.2"
  sha256 "2b20d5855b41a5a9e56aec1a268d6466f5f392ae5a08f6cf63c8151d9c85b7ab"

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
