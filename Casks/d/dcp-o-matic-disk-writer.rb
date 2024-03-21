cask "dcp-o-matic-disk-writer" do
  version "2.16.79"
  sha256 "b9915bb25895be928eeb047bc531693c72713c09c69b0499390e684fa952ec68"

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
