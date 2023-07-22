cask "dcp-o-matic-combiner" do
  version "2.16.60"
  sha256 "12c784039e154284fcd185fdbe666bc11f35ec7c37b063d94af8fa47b4cd938a"

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
