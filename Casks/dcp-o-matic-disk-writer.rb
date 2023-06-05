cask "dcp-o-matic-disk-writer" do
  version "2.16.58"
  sha256 "e9ce1a845151b42f09741404579cd8d8366f60733a8a7ace4e4614c43123cec9"

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
