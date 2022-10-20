cask "dcp-o-matic-player" do
  version "2.16.31"
  sha256 "ef179d9d62cada39e8a0afc53b46a18d60c217ff2f9624f0a20dd9adc343f375"

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
