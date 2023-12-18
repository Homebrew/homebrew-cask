cask "dcp-o-matic-kdm-creator" do
  version "2.16.70"
  sha256 "beeccf76a49b5c17fbcdee5a5c72894cbb40b71c144a2a05e7166a918609ac6e"

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
