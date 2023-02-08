cask "dcp-o-matic-disk-writer" do
  version "2.16.41"
  sha256 "1a113f9f739ffbc6c87272266ca442f09f44a194e24dd80da1736c38f46b9c5c"

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
