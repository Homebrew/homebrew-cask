cask "dcp-o-matic-encode-server" do
  version "2.16.92"
  sha256 "5eca2bb86567f911c7bebbf0e46a876cdda73c62ccb3abca7a4c554131616ee0"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Encode Server.app"

  # No zap stanza required
end
