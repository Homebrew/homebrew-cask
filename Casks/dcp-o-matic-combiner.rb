cask "dcp-o-matic-combiner" do
  version "2.16.59"
  sha256 "e5a6f80ec9e8cb55acd9d5aef2d4c3c3a75d7268b4d803f03cc265d7f6ffb692"

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
