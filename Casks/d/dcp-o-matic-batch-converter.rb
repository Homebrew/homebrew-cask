cask "dcp-o-matic-batch-converter" do
  version "2.16.97"
  sha256 "c8e6eae754c730dcca84818a3d950b840ab5207496b32a02664158d6a0ce6edc"

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
