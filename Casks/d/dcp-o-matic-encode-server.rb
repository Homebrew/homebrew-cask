cask "dcp-o-matic-encode-server" do
  version "2.16.78"
  sha256 "7cd1ecacb9f8647e02947d599f67f87233a796d59148dc380053ab8faeb38c68"

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
