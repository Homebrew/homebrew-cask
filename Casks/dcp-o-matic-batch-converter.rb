cask "dcp-o-matic-batch-converter" do
  version "2.16.14"
  sha256 "8ca0288cfaaf17bc154cc7063b5f35e526bcb3861dbcde8bb701013c1137e727"

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
