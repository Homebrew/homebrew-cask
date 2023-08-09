cask "dcp-o-matic-encode-server" do
  version "2.16.60"
  sha256 "7dd7b4cb2a336857780379c7a6a6cb6b8610f4e2ca1c75655679c52350e606d9"

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
