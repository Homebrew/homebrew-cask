cask "dcp-o-matic-disk-writer" do
  version "2.16.72"
  sha256 "4cb8ba7ad9417bacadce1488035906c6e725341481f8761b98fe40c51cb7384a"

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
