cask "dcp-o-matic-player" do
  version "2.18.13"
  sha256 "f4cda25564c77066cfa4409b4dfa55f8d184a01fe3b15a094d7519b73a00b29f"

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
