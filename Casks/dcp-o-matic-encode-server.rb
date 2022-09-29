cask "dcp-o-matic-encode-server" do
  version "2.16.28"
  sha256 "8d5b63bda7688d6e415604ed0daccb4c5998b1f699c79dcfa315168e345479e3"

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
