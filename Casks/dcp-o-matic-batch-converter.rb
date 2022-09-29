cask "dcp-o-matic-batch-converter" do
  version "2.16.28"
  sha256 "2e9b070db7a6f2aea82431fa842898f9d1d1027ce47a9ec641db518878c5eec5"

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
