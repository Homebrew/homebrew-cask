cask "dcp-o-matic-batch-converter" do
  version "2.16.39"
  sha256 "07d7ce3b104a51e3d6b6239e4e2e2e139f14bce4894a67da3fdad0069fb41fe8"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
