cask "dcp-o-matic-batch-converter" do
  version "2.18.4"
  sha256 "c636db946b9ececf38b8634355e29c8c57d62bb78fc609807eb46ba84727037b"

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
