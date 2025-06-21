cask "dcp-o-matic-disk-writer" do
  version "2.18.20"
  sha256 "3b1f097ca9cb0374b21e689b0a231d05ed1d45aaf6200d66b63b062f033de477"

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
