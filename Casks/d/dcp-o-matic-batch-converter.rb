cask "dcp-o-matic-batch-converter" do
  version "2.18.15"
  sha256 "99bcade13ad81b89af9ddf1512c90a720c3421a0cced273ee1b6d1f3b3dc0e21"

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
