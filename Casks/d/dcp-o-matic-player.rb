cask "dcp-o-matic-player" do
  version "2.16.89"
  sha256 "a659eb9f2c7f0925082ffb072bd5f1bee0aa54018587f63883ee5dd810eddd65"

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
