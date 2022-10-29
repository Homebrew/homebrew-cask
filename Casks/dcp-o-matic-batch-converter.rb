cask "dcp-o-matic-batch-converter" do
  version "2.16.32"
  sha256 "bee0f686388d4b4bd44bde2bc5e2dd568b10e5ffec75c8487ceb719c06a3f360"

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
