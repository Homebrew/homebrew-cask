cask "dcp-o-matic-kdm-creator" do
  version "2.16.61"
  sha256 "1fab6f7f768559d112c2a7b626bd264675b90ca91d5019fd176df77b2d5bda5e"

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
