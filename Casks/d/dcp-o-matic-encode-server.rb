cask "dcp-o-matic-encode-server" do
  version "2.16.99"
  sha256 "c2431159d42becb3d373634ecb93f0ff58187c3012aff4244a763517b7aa6288"

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
