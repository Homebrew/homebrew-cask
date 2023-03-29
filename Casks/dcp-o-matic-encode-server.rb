cask "dcp-o-matic-encode-server" do
  version "2.16.50"
  sha256 "2f46f6f3cf6cd544256444860ea40394948f37ee90aba53c4aabdc4dd183cdf5"

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
