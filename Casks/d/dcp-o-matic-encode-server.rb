cask "dcp-o-matic-encode-server" do
  version "2.16.98"
  sha256 "475d6873f6b8f0d9e971294e6aa9f8d5cea1fdd5c9b51d4e7932c00eb4508319"

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
