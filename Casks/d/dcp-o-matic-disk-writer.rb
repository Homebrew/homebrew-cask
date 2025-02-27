cask "dcp-o-matic-disk-writer" do
  version "2.18.12"
  sha256 "e3f3a64ea7bfedd047832ad7ccc5c7d6126cdf17b8de5b0d0de2229ac55403c3"

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
