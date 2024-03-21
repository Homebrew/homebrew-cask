cask "dcp-o-matic-batch-converter" do
  version "2.16.79"
  sha256 "a6c121c85ec807c3c27376cd672cdebdda41ff558bb36eea079d1c1be39a8b19"

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
