cask "dcp-o-matic-disk-writer" do
  version "2.16.88"
  sha256 "72b9a152f6f05bdf0e6485409e29e4edf1ff4a630966e0265dc6acc53ded37e9"

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
