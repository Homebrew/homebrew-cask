cask "dcp-o-matic-disk-writer" do
  version "2.16.47"
  sha256 "465b2ad12fdd2b2c02daa7458455461259af49019bc2d9a1ce78a9982ecce913"

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
