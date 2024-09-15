cask "dcp-o-matic-disk-writer" do
  version "2.16.92"
  sha256 "e6de4706057af0968bd1a0bced33be84bf68d043bcaa05bd3c23175d073dbbc7"

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
