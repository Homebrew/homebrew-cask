cask "dcp-o-matic-disk-writer" do
  version "2.16.63"
  sha256 "0d23c2087deb32461d9a95f3d48e1b87d51953088edab12fbafc289d36529d55"

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
