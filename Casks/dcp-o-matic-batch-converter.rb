cask "dcp-o-matic-batch-converter" do
  version "2.16.57"
  sha256 "17645b998ad402ed47d24b52c32082f698e5b8bdb7cfc3c8c81d715810e399eb"

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
