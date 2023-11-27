cask "dcp-o-matic-encode-server" do
  version "2.16.69"
  sha256 "27fb5c73b41ed9a999aa7bf6cea55a93f18df50d65c241fdc55db97b3cf66bb2"

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
