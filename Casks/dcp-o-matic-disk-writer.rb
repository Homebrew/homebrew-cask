cask "dcp-o-matic-disk-writer" do
  version "2.16.16"
  sha256 "0756b94a8b81478496b3e0b8a4971e2d8b7e31a07818ad14c2649f44f7d4c02a"

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
