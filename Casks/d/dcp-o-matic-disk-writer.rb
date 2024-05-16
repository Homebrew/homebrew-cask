cask "dcp-o-matic-disk-writer" do
  version "2.16.84"
  sha256 "05ffc8f73eb90b8413ae7227839f7e6d40343fbc64865671cff7a0ae543bed5f"

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
