cask "dcp-o-matic-disk-writer" do
  version "2.16.74"
  sha256 "57afed6508a58c2a047b5d7072ec498d1247f1c7e023b090d91ce8345e42acba"

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
