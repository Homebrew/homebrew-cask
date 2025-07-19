cask "dcp-o-matic-disk-writer" do
  version "2.18.21"
  sha256 "a84f5404478892c7b3b0e277b5f9746bb84f9e782b4015c0bb0693ae380c4152"

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
