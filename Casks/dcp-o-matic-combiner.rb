cask "dcp-o-matic-combiner" do
  version "2.16.48"
  sha256 "d3b423fcf237198e2260f045e0bc0dcc4b2dbd905b1a19499f780250e2b8367e"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-combiner&version=#{version}"
  name "dcp-o-matic-combiner"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Combiner.app"

  # No zap stanza required
end
