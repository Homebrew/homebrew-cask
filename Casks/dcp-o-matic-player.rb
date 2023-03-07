cask "dcp-o-matic-player" do
  version "2.16.46"
  sha256 "6a279c8d5567beffa91d7f250add1f9616e39415f6d323e2fc4b65706d342c1f"

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
