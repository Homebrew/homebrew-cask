cask "dcp-o-matic-batch-converter" do
  version "2.16.73"
  sha256 "0da87b3c7c63b81615616736277d0e6b5f14b02197bba0d5a0ad13d50341543b"

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
