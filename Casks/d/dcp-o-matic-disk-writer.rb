cask "dcp-o-matic-disk-writer" do
  version "2.16.98"
  sha256 "4f52981afa4b341ec2dbed87e609e46216c14d2471b0fac8f3dfcba5931891b3"

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
