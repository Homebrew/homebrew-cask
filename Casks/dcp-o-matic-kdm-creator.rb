cask "dcp-o-matic-kdm-creator" do
  version "2.16.60"
  sha256 "49fb9f7126991c3c567382aea328ef9651ef77fea1489850ba6644ef825af7a9"

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
