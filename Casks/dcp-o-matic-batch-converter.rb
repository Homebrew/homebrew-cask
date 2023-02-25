cask "dcp-o-matic-batch-converter" do
  version "2.16.44"
  sha256 "fec2125653d94f81068b04d9aa95b680f19daba31de3c2a6032acaae88dcc889"

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
