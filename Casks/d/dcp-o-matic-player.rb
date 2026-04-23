cask "dcp-o-matic-player" do
  version "2.18.39"
  sha256 "f4f0882bf882efb78f5212dda298f7738c19549cfd302c1195180f480ed173ae"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-player&version=#{version}"
  name "DCP-o-matic Player"
  desc "Play Digital Cinema Packages"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: ">= :big_sur"

  app "DCP-o-matic #{version.major} Player.app"

  # No zap stanza required
end
