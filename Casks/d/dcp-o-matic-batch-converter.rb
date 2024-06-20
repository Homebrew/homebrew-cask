cask "dcp-o-matic-batch-converter" do
  version "2.16.87"
  sha256 "26ac742d274b0c7972cb35ec73eee55c721cb55b0d19b6bb4f3a335c6ee7c64a"

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
