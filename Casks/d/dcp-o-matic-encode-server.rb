cask "dcp-o-matic-encode-server" do
  version "2.16.80"
  sha256 "19d1bc8dcc811de950265eca32617497a3c11d796d9b4e683f7e6b2e0e22104a"

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
