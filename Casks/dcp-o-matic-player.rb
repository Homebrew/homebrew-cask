cask "dcp-o-matic-player" do
  version "2.16.15"
  sha256 "295cda17897931c903667be3a24c3cd19d6a709d65f0cc9c8d722ee95cc62e52"

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
