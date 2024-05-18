cask "dcp-o-matic-disk-writer" do
  version "2.16.85"
  sha256 "805db04448be7f01b14437c781f2108a6dd444c9718736bd6b40512d9ac740e7"

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
