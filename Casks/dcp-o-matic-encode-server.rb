cask "dcp-o-matic-encode-server" do
  version "2.16.44"
  sha256 "fcab3745fff92bcd5c3bb8bce27550e5bd0c340ca43ef3b513b5e3dcde84cd7e"

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
