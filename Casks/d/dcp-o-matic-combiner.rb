cask "dcp-o-matic-combiner" do
  version "2.18.3"
  sha256 "3e519c65de1438a5fb00e63ae5d09b6aef435ced8b82cbab800e538cca72656f"

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
