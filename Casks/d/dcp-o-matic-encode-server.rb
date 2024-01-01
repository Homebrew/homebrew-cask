cask "dcp-o-matic-encode-server" do
  version "2.16.71"
  sha256 "af5178457ed9246ee35c3c6de11d988d11f36cd9f35b0dd2ee25ecda32a13e80"

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
