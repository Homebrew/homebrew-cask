cask "dcp-o-matic-combiner" do
  version "2.16.65"
  sha256 "9fa415ee224c80e9936d0c1b056df250f0a6feb4aaefa60c62bbfc7f8e2ffa90"

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
