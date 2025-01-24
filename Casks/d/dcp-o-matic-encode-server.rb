cask "dcp-o-matic-encode-server" do
  version "2.18.7"
  sha256 "8cca2ce857b81b52f754ca2ac435d0776d422483257e3acb5ddb0c1c4b028ac3"

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
