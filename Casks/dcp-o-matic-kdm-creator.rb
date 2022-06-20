cask "dcp-o-matic-kdm-creator" do
  version "2.16.14"
  sha256 "273760ca4d75da082821bbbaf3d8028393d0e1f118b9515a10431783785f0072"

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
