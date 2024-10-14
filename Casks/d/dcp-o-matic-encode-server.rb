cask "dcp-o-matic-encode-server" do
  version "2.16.95"
  sha256 "69198a0c71ef4d12c48cfede4dfef8c33b6fc2c494d54f9a265e95d605a5b5a5"

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
