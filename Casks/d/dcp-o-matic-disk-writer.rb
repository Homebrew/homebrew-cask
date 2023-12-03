cask "dcp-o-matic-disk-writer" do
  version "2.16.70"
  sha256 "28a6946ca4a31ec11be883c5dd3e62602e419353edb27f78f108f7f1461be2f7"

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
