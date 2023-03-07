cask "dcp-o-matic-disk-writer" do
  version "2.16.46"
  sha256 "a4b0b282390e29ece6aae042bdc1110f98158e7356b59eccb973e3b8f9e0077e"

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
