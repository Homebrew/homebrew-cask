cask "dcp-o-matic-disk-writer" do
  version "2.16.66"
  sha256 "10f1f852b5fc63bbe4e81e062b8d9c3b9e6ebe54831b5453a21b11d6aa01c13e"

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
