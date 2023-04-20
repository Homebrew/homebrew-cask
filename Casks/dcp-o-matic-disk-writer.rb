cask "dcp-o-matic-disk-writer" do
  version "2.16.50"
  sha256 "3af025e6d8b5142d10c332ef1df1df02a89f345286e2f093ba53eb216fb6d717"

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
