cask "dcp-o-matic-encode-server" do
  version "2.16.70"
  sha256 "2e8c437d69a3de1c2198788c80e093f78b88450fa4dc842e8d3b304d768a7be7"

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
