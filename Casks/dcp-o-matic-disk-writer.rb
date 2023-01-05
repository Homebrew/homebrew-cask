cask "dcp-o-matic-disk-writer" do
  version "2.16.39"
  sha256 "d3d0af5c85491f801b06481bdb367ca9c94940d440f94ba090a3050bd56dc31c"

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
