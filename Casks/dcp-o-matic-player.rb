cask "dcp-o-matic-player" do
  version "2.16.30"
  sha256 "f909f861af367679782e3fad2346be9b5bf4d75ecd8de4b7554e85307c425003"

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
