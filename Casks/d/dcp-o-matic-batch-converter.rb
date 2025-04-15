cask "dcp-o-matic-batch-converter" do
  version "2.18.17"
  sha256 "918f856a3cab5ab05fd00cb86fed7a45776712d6b474bce41b44cb49017202dd"

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
