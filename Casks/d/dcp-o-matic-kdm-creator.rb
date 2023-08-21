cask "dcp-o-matic-kdm-creator" do
  version "2.16.62"
  sha256 "2ac1e51195491d09bb626e75cd32e571c84b29732ba98d374288d9ddef5cbc5a"

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
