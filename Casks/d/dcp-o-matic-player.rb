cask "dcp-o-matic-player" do
  version "2.18.0"
  sha256 "cb4402fa80a173c7c558f776ea021a114ead819949de6d1ead8e8f389d50fa43"

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
