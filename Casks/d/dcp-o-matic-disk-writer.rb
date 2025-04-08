cask "dcp-o-matic-disk-writer" do
  version "2.18.16"
  sha256 "7dd6c421ca7338c05de2762286c17b2943176677c3393f9774b9fd24c12aa6f9"

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
