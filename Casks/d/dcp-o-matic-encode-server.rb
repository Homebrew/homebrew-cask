cask "dcp-o-matic-encode-server" do
  version "2.16.84"
  sha256 "9468813e1c5d2662b2d7d0aa294659b573b524ad0a75dd1c647ed472623c73fc"

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
