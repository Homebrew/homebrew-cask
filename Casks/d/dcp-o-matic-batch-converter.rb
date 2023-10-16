cask "dcp-o-matic-batch-converter" do
  version "2.16.66"
  sha256 "5c1a8d8cb21ee64d596d35384a5ba1fb0d7d10ac849eba20b1e1398ab4b01a34"

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
