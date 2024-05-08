cask "dcp-o-matic-disk-writer" do
  version "2.16.83"
  sha256 "cdfdc23c723979a135ebe2622bc326ec7b6e49e054acbbe2ccb86838dee86476"

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
