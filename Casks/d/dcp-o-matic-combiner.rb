cask "dcp-o-matic-combiner" do
  version "2.18.7"
  sha256 "5acf18e28cc28cb3616d2460cde3b15a87016424b126dae6da3724c812323f51"

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
