cask "dcp-o-matic-player" do
  version "2.16.55"
  sha256 "88c9980b8fbd8f2e14d8f54fbd5de0b9c29e1959ea96a601e5c8007a51cfe26a"

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
