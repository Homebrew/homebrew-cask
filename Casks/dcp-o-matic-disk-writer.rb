cask "dcp-o-matic-disk-writer" do
  version "2.16.15"
  sha256 "d0b878ae4e892e9e1c7e662b2b5381edf2876c59715012ce3aa8e7ea3e12598c"

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
