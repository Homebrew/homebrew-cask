cask "dcp-o-matic-encode-server" do
  version "2.16.47"
  sha256 "12722622892bd728a25a71eb3c80eeedee9d0a8f7e9ed48fd988199444343834"

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
