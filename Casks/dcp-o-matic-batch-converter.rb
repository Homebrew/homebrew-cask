cask "dcp-o-matic-batch-converter" do
  version "2.16.34"
  sha256 "cf52de63841e0a5b33fde27cd01f4922fdbc827b50f5e636a80d188b83e02659"

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
