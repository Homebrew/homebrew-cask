cask "dcp-o-matic-encode-server" do
  version "2.16.38"
  sha256 "f861ff99f2185d3ea70c01eeca10b4df02f5899ae0aeb24986514083a98d626f"

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
