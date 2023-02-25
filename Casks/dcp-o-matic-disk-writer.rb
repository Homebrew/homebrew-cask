cask "dcp-o-matic-disk-writer" do
  version "2.16.44"
  sha256 "44bd984c01a478496eabecaeec1983a0f5427ccdf5802d2c495abce8bc4b1b04"

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
