cask "dcp-o-matic-disk-writer" do
  version "2.18.45"
  sha256 "a390e50d48006e0a663cf540972d46fe57d874f27e052b47e9e61c16f9285549"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-disk&version=#{version}"
  name "DCP-o-matic Disk Writer"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Disk Writer.app"

  # No zap stanza required
end
