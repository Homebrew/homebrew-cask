cask "dcp-o-matic-encode-server" do
  version "2.16.61"
  sha256 "4096d2053d5af41cc90c2072741cdec27df96fa9968113e59cd68dc86bb4f037"

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
