cask "dcp-o-matic-player" do
  version "2.16.85"
  sha256 "96bea25a5a2c7137ccafb611922f02033a188d764fcc7250d595ddb0a8d2a321"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-player&version=#{version}"
  name "DCP-o-matic Player"
  desc "Play Digital Cinema Packages"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Player.app"

  # No zap stanza required
end
