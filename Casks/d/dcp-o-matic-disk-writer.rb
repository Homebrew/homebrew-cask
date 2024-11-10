cask "dcp-o-matic-disk-writer" do
  version "2.16.97"
  sha256 "4958a2485233fcf222af94e297ce2f3fb9440ffb59b76f0fcf6ce1f019cd8826"

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
