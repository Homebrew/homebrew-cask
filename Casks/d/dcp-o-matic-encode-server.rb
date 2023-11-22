cask "dcp-o-matic-encode-server" do
  version "2.16.67"
  sha256 "cf2f2ca63683c090bc4217d84a5d816ae8d3075fa3c6a737ab546eea5175e38d"

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
