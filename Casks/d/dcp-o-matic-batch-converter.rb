cask "dcp-o-matic-batch-converter" do
  version "2.18.18"
  sha256 "a092e273a801a542bd7bbe4a83e14278ce3db58622f772d94cac876f15242645"

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
