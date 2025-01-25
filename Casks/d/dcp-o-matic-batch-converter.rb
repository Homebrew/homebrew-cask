cask "dcp-o-matic-batch-converter" do
  version "2.18.8"
  sha256 "ae614ef95c14f4ea943bfc70c9ee90c85f7187262a24df4942d9f31f87d41575"

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
