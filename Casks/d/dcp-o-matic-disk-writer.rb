cask "dcp-o-matic-disk-writer" do
  version "2.16.96"
  sha256 "066f9dac8bcb84b05f95b90a8da181afe3e29834f5d3c3fb276681be36c5e933"

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
