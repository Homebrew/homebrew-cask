cask "dcp-o-matic-encode-server" do
  version "2.16.8"
  sha256 "d248c6cd5a19a12359edc53ed7f954d56f63cbafbdfd5362dd7e28171ba03e30"

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
