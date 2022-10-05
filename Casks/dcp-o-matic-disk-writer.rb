cask "dcp-o-matic-disk-writer" do
  version "2.16.29"
  sha256 "70cd75834f7d84ab532fb5cb81eb33643e2105308a6dfbbfc51f0901daa61fac"

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
