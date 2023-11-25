cask "dcp-o-matic-encode-server" do
  version "2.16.68"
  sha256 "e7700b291f60fa5d0d516066c948ed28fadfabcd2d646303a71b69767c294e37"

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
