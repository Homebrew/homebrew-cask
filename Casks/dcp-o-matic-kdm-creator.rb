cask "dcp-o-matic-kdm-creator" do
  version "2.16.15"
  sha256 "083f528dc8d13d0a37fd0fe45ab7ea02a5ba518d3379cd6d3dd21710ead68a38"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} KDM Creator.app"

  # No zap stanza required
end
