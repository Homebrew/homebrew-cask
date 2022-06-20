cask "dcp-o-matic-disk-writer" do
  version "2.16.14"
  sha256 "cdc9641d5d0dad4513375091656d06520eac4bf7bba2bfbfdbb908123b0ea857"

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
