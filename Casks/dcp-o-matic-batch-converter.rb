cask "dcp-o-matic-batch-converter" do
  version "2.16.59"
  sha256 "cb6b7806172fafed6afd6607420d48c10766f97d12078331aae902e3fd70a8e2"

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
