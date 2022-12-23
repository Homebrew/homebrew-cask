cask "dcp-o-matic-kdm-creator" do
  version "2.16.36"
  sha256 "ff4da4519bb3573bd38dcbddb27d599bff7c4b6417c6e7f0c821c2ffdd0942c2"

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
