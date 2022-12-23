cask "dcp-o-matic-disk-writer" do
  version "2.16.36"
  sha256 "5601415728dcb2e23f9a54daa90bf1033a7adc67ef6b0dd69b956708983e6805"

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
