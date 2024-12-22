cask "dcp-o-matic-encode-server" do
  version "2.18.0"
  sha256 "33f40c1c06c954af50c77a106924df99faf9e54227268b7905ab71b9dc39da8d"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Encode Server.app"

  # No zap stanza required
end
