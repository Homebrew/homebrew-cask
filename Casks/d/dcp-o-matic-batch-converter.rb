cask "dcp-o-matic-batch-converter" do
  version "2.16.70"
  sha256 "2a6e4194cc48ecf0ad2d2b9ab9c4abec09908c0e61e71552039075dd49383e14"

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
