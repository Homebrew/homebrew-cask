cask "dcp-o-matic-disk-writer" do
  version "2.16.86"
  sha256 "7e61e6288c7d4b19e833a613b23177dc5d6ceaf751cb9d012f3c6aa4d0e29b7b"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-disk&version=#{version}"
  name "DCP-o-matic Disk Writer"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Disk Writer.app"

  # No zap stanza required
end
