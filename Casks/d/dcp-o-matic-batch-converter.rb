cask "dcp-o-matic-batch-converter" do
  version "2.18.1"
  sha256 "31b9bd72ae3c6c645ed67c0228350f88511ae8dcfc5793045671051e6abbbc3c"

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
