cask "dcp-o-matic-batch-converter" do
  version "2.18.9"
  sha256 "42e03463b931a317425de1dd0e1cca20e661c762dbd6acbd522b34af0dbc8f17"

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
