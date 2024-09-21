cask "dcp-o-matic-disk-writer" do
  version "2.16.93"
  sha256 "dc05db7b20c5e4e146ce6c348d584e86ee7a3fcb5d63874e31b120c8551b8766"

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
