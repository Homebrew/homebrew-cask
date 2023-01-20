cask "dcp-o-matic-encode-server" do
  version "2.16.40"
  sha256 "12fe0c43efdc3f144f711eeed83c6da9e60432e3a2649c6def81ae68ac9ed39b"

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
