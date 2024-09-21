cask "dcp-o-matic-player" do
  version "2.16.93"
  sha256 "c4a71231ead5d5814b5d5b8f929cfef03aeb7d494f0bf2544cc4dca821eae060"

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
