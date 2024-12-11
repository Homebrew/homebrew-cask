cask "dcp-o-matic-batch-converter" do
  version "2.16.99"
  sha256 "8c8f4e9246c109a7930898ea8ffd9083ad6b5ad03b853086742c5f9ddb784c48"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
