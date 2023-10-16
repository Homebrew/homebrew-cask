cask "dcp-o-matic-player" do
  version "2.16.66"
  sha256 "20a9249e64cffc6ef4b908d36e01bce31c60982b28b12c3263242503df1f8088"

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
