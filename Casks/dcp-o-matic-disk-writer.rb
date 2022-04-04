cask "dcp-o-matic-disk-writer" do
  version "2.16.8"
  sha256 "6c2bce0d6c6e1bae1d34b9132253c32b7d75a7e5d6fa750d801ea045d0ed72e1"

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
