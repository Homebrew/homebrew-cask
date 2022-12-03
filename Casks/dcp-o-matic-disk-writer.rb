cask "dcp-o-matic-disk-writer" do
  version "2.16.35"
  sha256 "8d37c504de81e449757f1d2bca08678fe0f4e2f69523fb2764dcd7f892cbb842"

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
