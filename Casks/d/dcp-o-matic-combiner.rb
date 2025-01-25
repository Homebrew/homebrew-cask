cask "dcp-o-matic-combiner" do
  version "2.18.8"
  sha256 "57e95922bab5a9af69e3d6c680d8b00601b4e85c59dc2afc90af2a27cee630c2"

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
