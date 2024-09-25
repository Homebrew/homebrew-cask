cask "dcp-o-matic-batch-converter" do
  version "2.16.94"
  sha256 "d886fc79dcab4a5e56a7240b7f3545595533e197520995266f5ec94a890f5d2e"

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
