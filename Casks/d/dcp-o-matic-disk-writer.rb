cask "dcp-o-matic-disk-writer" do
  version "2.18.10"
  sha256 "0585d064eccd631ef95f417e6af90e1700a17fe2c36bfe29da2976c51fbf7c05"

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
