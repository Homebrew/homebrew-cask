cask "dcp-o-matic-combiner" do
  version "2.16.83"
  sha256 "c3db4b43fa797458b0eb9e24f120ed006f6fbfeabdd865d6d5e5ffb69e93b0be"

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
