cask "dcp-o-matic-batch-converter" do
  version "2.18.13"
  sha256 "5d601ab3705364d9bb1ce5497549fc0e18bd7715d152ba93008e390c250a71a4"

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
