cask "dcp-o-matic-encode-server" do
  version "2.16.83"
  sha256 "5463fa7f9a19694541714e6efbc1d45f2cb2c7a25ad99be09f27573be3f22d28"

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
