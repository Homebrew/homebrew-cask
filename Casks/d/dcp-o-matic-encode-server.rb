cask "dcp-o-matic-encode-server" do
  version "2.18.6"
  sha256 "3f9637ce2069afe8edc1bf3a9a71bf2aacfc4e14c1faf5b2c1a891b821eb94ec"

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
