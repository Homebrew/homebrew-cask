cask "dcp-o-matic-player" do
  version "2.18.10"
  sha256 "426181b78ceafd69d815ed860d180bfad64de687fe639d1833c43cdc5c4d706f"

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
