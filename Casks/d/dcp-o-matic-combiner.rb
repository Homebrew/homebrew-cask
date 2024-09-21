cask "dcp-o-matic-combiner" do
  version "2.16.93"
  sha256 "2054f5323574c1b9ddffcb79d620cbe69594420f01f7cc0e20797183ec9e7d55"

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
