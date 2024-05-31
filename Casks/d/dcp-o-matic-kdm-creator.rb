cask "dcp-o-matic-kdm-creator" do
  version "2.16.86"
  sha256 "8b55459409cabdc776fd154d43e5c35808a37bdbf783fec1dee6140fa68aa271"

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
