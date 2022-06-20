cask "dcp-o-matic-encode-server" do
  version "2.16.14"
  sha256 "1d501f9def067f09dfa9c7dbeba962f9d8246b26eb9061f8977a3bac87ade89f"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Encode Server.app"

  # No zap stanza required
end
