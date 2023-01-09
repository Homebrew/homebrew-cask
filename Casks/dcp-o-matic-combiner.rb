cask "dcp-o-matic-combiner" do
  version "2.16.40"
  sha256 "a6ee0f7bb0c91703203b28850b8a151e1b654491f4d305552266b4e6ab2ebb68"

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
