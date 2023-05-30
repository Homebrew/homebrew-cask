cask "dcp-o-matic-kdm-creator" do
  version "2.16.57"
  sha256 "1b54093919541eb2c0d37371b6b164f1ebbfbe5aff19539ade2802ad0aa8bcc3"

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
