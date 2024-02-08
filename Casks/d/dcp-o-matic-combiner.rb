cask "dcp-o-matic-combiner" do
  version "2.16.74"
  sha256 "173bf1e7017feee83d2b14e5aa4d116b9dd12881826d9188cd40c945120712ce"

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
