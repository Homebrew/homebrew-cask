cask "dcp-o-matic-batch-converter" do
  version "2.16.65"
  sha256 "2535abaf6474283b044708bde47a1a026af5cb544f40f3af5e540e846b82bca4"

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
