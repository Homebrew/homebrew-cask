cask "dcp-o-matic-batch-converter" do
  version "2.18.2"
  sha256 "48ac83a90833429bb5367ead9d4d4b71311c8fe4bf531f7a117147b9dcafdd2c"

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
