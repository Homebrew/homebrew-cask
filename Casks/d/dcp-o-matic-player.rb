cask "dcp-o-matic-player" do
  version "2.18.1"
  sha256 "1720dbb9655c9bec11a3700a8d056f9c796fd375f5d25dc8bf24f60b0a6f42d4"

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
