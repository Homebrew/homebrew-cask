cask "dcp-o-matic-encode-server" do
  version "2.16.22"
  sha256 "531c3323931cd3364e5c1332182b87ff1937dea0ebe76bdedc5861e38d47ab0f"

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
