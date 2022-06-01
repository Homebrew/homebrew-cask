cask "dcp-o-matic-combiner" do
  version "2.16.13"
  sha256 "ad82ee9dd0d853ead77e3da384d36962ad7fc0a1dd9ec485ae649e3cc25f6912"

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
