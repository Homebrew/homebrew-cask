cask "dcp-o-matic-batch-converter" do
  version "2.16.35"
  sha256 "aa9c14c4c40e18ff72ad9596b438e14dceb4e71504de646aea7a908a49285e66"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
