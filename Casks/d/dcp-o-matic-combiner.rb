cask "dcp-o-matic-combiner" do
  version "2.16.78"
  sha256 "d2733e00b4a6a5855008ce23357e49b874af74a64579bbb6ee45794a614499fa"

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
