cask "dcp-o-matic-disk-writer" do
  version "2.16.78"
  sha256 "8ee3345cb61f71d48e5f39fe01602d1ed9c346db30ab4a3454058e290f0cd981"

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
