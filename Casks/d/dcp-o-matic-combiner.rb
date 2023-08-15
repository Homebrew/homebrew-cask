cask "dcp-o-matic-combiner" do
  version "2.16.61"
  sha256 "71f7fdeb39b90d902e8b6d6e9f3b4eef1bf32d0bdfc71137ce97f98b0771ffdb"

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
