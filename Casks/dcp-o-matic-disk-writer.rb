cask "dcp-o-matic-disk-writer" do
  version "2.16.31"
  sha256 "22677cd1e8abf42fc6b43c5949c9a611b2642068c5fc293e5c4034a0b2ccfb18"

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
