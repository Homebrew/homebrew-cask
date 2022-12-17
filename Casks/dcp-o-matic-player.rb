cask "dcp-o-matic-player" do
  version "2.16.35"
  sha256 "b31cd1c3df93676db2b7f2f86c8360051d108492cb7b3b6d28481f41a96dc59c"

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
