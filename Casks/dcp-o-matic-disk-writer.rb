cask "dcp-o-matic-disk-writer" do
  version "2.16.13"
  sha256 "0d8d7c724332b2e639770bd0818dbdb07be5e4ab3bd5cd156e1852c11d4d2a9a"

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
