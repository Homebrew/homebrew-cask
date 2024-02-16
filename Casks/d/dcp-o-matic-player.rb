cask "dcp-o-matic-player" do
  version "2.16.76"
  sha256 "07c01a17af34378fdd17d875aa122f103b449feedd87eb4e3959834ce9a0eabd"

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
