cask "dcp-o-matic-encode-server" do
  version "2.16.93"
  sha256 "67d505011aa97e1fb5649ad7f55c693b8f4c71d4230b804309e3386ae1b19a91"

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
