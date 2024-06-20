cask "dcp-o-matic-player" do
  version "2.16.87"
  sha256 "2050e52dd67e2ecdbf4456178efeceecab1863dd6ac371886a838b5d23369dea"

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
