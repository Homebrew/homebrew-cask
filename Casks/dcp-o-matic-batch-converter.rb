cask "dcp-o-matic-batch-converter" do
  version "2.16.38"
  sha256 "7462ed978e7a83b44573ec6288020e008d5f47b1c19c1ef2f83830c665ad9b1d"

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
