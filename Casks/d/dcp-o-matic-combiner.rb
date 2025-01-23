cask "dcp-o-matic-combiner" do
  version "2.18.6"
  sha256 "b3e74168ea2eedfb16f0e3dd5514d5f97716b414a1a012fffad1c863ebb95bcf"

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
