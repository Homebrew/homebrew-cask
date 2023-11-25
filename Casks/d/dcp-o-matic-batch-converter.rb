cask "dcp-o-matic-batch-converter" do
  version "2.16.68"
  sha256 "229ae459dee98ee87cee9fa747327abb47f0a3e18351cdc9cad2c827b03a9819"

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
