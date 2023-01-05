cask "dcp-o-matic-encode-server" do
  version "2.16.39"
  sha256 "3b11477eac8650348b298d536a4001841f307635b4d8680dcf7d4d4ec8a19633"

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
