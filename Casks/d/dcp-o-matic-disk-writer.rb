cask "dcp-o-matic-disk-writer" do
  version "2.18.18"
  sha256 "bb50245402038ee5b40592ef34ab293b7040ab66ff27b00a72f57140f41c05ef"

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
