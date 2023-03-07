cask "dcp-o-matic-combiner" do
  version "2.16.46"
  sha256 "e9ff42f90e0ec8f043e16dfdc0b1db98190ea1e45467e9e5773ac8a020790f87"

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
