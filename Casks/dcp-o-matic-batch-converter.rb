cask "dcp-o-matic-batch-converter" do
  version "2.16.55"
  sha256 "dba0d29d45964730f271bd2c63aa18a087b012399e55f64941fd5b85c9751a61"

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
