cask "dcp-o-matic-batch-converter" do
  version "2.16.81"
  sha256 "dda6cb2d3f8ea8871ceae6da132d4d21ed41bead4cd0f8d8757b2d02dddb5fd4"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
