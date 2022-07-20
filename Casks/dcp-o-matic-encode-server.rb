cask "dcp-o-matic-encode-server" do
  version "2.16.18"
  sha256 "1393b180ab80a5d29c6794c3030c836a4b179c1e298d4166f66b6ec79217da74"

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
