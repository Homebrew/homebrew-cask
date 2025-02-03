cask "dcp-o-matic-batch-converter" do
  version "2.18.10"
  sha256 "66792a5be1f872e7a9f4974365ce995fab47807966ebdfc75e3cd1820478ed6c"

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
