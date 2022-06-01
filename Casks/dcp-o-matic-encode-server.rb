cask "dcp-o-matic-encode-server" do
  version "2.16.13"
  sha256 "d46ee5943d3d14058bdb94beebfebfe138111d6b38f91a399bf4cb9d718b5602"

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
