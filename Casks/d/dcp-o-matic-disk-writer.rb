cask "dcp-o-matic-disk-writer" do
  version "2.18.0"
  sha256 "c8f703d69459b53b3a2cf2e8a610af438152c2eb82de11ad57be58146d1baf97"

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
