cask "dcp-o-matic-combiner" do
  version "2.16.16"
  sha256 "cd469fc4d1f097d047d1dbc1ab3b4be884914854080ff964c3900a992f69d783"

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
