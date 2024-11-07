cask "dcp-o-matic-encode-server" do
  version "2.16.96"
  sha256 "c296fd38d9f048560c732d811a0b0879146210a7d3132cf89c8d4d3ee312e415"

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
