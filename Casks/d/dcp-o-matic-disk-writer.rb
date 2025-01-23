cask "dcp-o-matic-disk-writer" do
  version "2.18.6"
  sha256 "a529696e1db92afcf3b4e6fd4c074e33eb1a211dfa3a8c9be8e7e7873c495fe8"

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
