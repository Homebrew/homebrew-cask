cask "dcp-o-matic-disk-writer" do
  version "2.16.91"
  sha256 "4fab7a5534a9c6be21e675a75b12155c322a84fe5651ceeedc9f082bc919ce04"

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
