cask "dcp-o-matic-combiner" do
  version "2.16.55"
  sha256 "4575d24885ddb3743e1eee85a0b0fad1ed00e3436765f61ce3bb33c1dbf1592a"

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
