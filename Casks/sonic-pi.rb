cask "sonic-pi" do
  version "3.2.2"
  sha256 "52828a3132ed8657a30a64f995dfe72b32f0a3b718886c3ac7e6d41d846ab441"

  url "https://sonic-pi.net/files/releases/v#{version}/sonic-pi-for-mac-v#{version}.zip"
  name "Sonic Pi"
  desc "Code-based music creation and performance tool"
  homepage "https://sonic-pi.net/"

  livecheck do
    url "https://github.com/samaaron/sonic-pi/releases"
    strategy :git
  end

  app "Sonic Pi.app"
end
