cask "dcp-o-matic-disk-writer" do
  version "2.16.81"
  sha256 "5847e6c30c265ef891c967d15e8fe985fab42bc41ad3f41ebe0b7096f5302887"

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
