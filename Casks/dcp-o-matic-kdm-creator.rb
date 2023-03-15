cask "dcp-o-matic-kdm-creator" do
  version "2.16.47"
  sha256 "04bdedcd904c3929eea2ebb8890740b87bc698c6c0b5eadaf00715b5dfe1d9c8"

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
