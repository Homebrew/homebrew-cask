cask "dcp-o-matic-disk-writer" do
  version "2.16.61"
  sha256 "fdb3130ee8be9670b5cf3945e9e2141b67a749dec25e956a3c8c419925fe6e67"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-disk&version=#{version}"
  name "DCP-o-matic Disk Writer"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Disk Writer.app"

  # No zap stanza required
end
