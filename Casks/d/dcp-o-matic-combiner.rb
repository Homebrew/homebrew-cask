cask "dcp-o-matic-combiner" do
  version "2.16.94"
  sha256 "66cb08aea0247400fd9859b1369c27c3dedd36fb036b759e1377ff612f329b8a"

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
