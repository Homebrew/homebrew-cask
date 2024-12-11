cask "dcp-o-matic-disk-writer" do
  version "2.16.99"
  sha256 "fc9347e37873a2a445d15f57c8ab21d1f33cd165a9ef69b000c815a2737c953d"

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
