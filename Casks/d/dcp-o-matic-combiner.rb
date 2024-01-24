cask "dcp-o-matic-combiner" do
  version "2.16.72"
  sha256 "53c3a035e06db93223fd62c3d6df442c9e17ab29eb62d361f8b1be091da42a2d"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-combiner&version=#{version}"
  name "DCP-o-matic-combiner"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Combiner.app"

  # No zap stanza required
end
