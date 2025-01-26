cask "dcp-o-matic-encode-server" do
  version "2.18.9"
  sha256 "1679f0d53c12b549595eb1cd5f3ea1fa57dbce7547ed3f3e77da440363104591"

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
