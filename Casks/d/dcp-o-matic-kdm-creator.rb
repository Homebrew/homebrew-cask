cask "dcp-o-matic-kdm-creator" do
  version "2.16.81"
  sha256 "91ea7630abc075752ffd554406163cccbdb60b5ae00c9a548bdce0b236bb82b6"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} KDM Creator.app"

  # No zap stanza required
end
