cask "dcp-o-matic-batch-converter" do
  version "2.16.89"
  sha256 "bc6427ac260634562003a428a837b614b200ff7f6947377a99d72b16b3c93cea"

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
