cask "dcp-o-matic-batch-converter" do
  version "2.16.31"
  sha256 "d86dff3b3db25345ff35246f67fb08a1b4d1420484d138f8c34b095d8cc00ed6"

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
