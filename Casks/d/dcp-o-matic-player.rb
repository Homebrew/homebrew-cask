cask "dcp-o-matic-player" do
  version "2.16.94"
  sha256 "3f0533861accdcaf97a5f1edf883972b209e520c160752efc5e7f1daa5f8ddc7"

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
