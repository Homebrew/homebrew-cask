cask "dcp-o-matic-player" do
  version "2.18.16"
  sha256 "7313f1f74a53e4177f3a361e1cad33212dcb7486dbcbc3a30e95f509b81c0702"

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
