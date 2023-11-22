cask "dcp-o-matic-batch-converter" do
  version "2.16.67"
  sha256 "343428e5aaf2485d9848243a31eebab84886a6987645f09e10c1def4f4c5d0b8"

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
