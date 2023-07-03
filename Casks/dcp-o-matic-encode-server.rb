cask "dcp-o-matic-encode-server" do
  version "2.16.59"
  sha256 "3262c1f0518d83ebbf0f2c7706e02041d84c64fadb27660698842260b78a79b6"

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
