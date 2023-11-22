cask "dcp-o-matic-disk-writer" do
  version "2.16.67"
  sha256 "d7eea8f35accc3c41e4c22e4147b19215a3f4721a82c6654a0b19607df2c0a84"

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
