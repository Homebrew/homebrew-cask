cask "dcp-o-matic-combiner" do
  version "2.18.0"
  sha256 "53975e2a9af511075d482bc957a48ea48d9b6c577d65cc091fcb6904c27824ad"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-combiner&version=#{version}"
  name "DCP-o-matic-combiner"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Combiner.app"

  # No zap stanza required
end
