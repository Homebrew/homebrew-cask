cask "sonic-pi" do
  version "4.0.0"
  sha256 "c33327eccf940863ec35ad4c9954b4c66a91add17b7a84f259cfd936af8815c7"

  url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-x64-v#{version}.dmg"
  name "Sonic Pi"
  desc "Code-based music creation and performance tool"
  homepage "https://sonic-pi.net/"

  livecheck do
    url "https://github.com/samaaron/sonic-pi"
    strategy :git
  end

  app "Sonic Pi.app"
end
