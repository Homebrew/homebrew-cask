cask "dcp-o-matic-encode-server" do
  version "2.16.31"
  sha256 "bec77ee20641cdad6e3a7d8366533d0c00d292559a6dbc3454d6592f2f542877"

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
