cask "dcp-o-matic-batch-converter" do
  version "2.16.75"
  sha256 "4491af84d9d679332a4bc46876171c55cd9ca24c85d82834e4b87a69365d8e02"

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
