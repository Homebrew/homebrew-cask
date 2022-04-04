cask "dcp-o-matic-combiner" do
  version "2.16.8"
  sha256 "6f42ee2e1f381653392e5a6fe8b3cd52cdab659d4498aa690fbaa751a2dff85c"

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
