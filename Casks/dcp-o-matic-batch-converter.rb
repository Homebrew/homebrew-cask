cask "dcp-o-matic-batch-converter" do
  version "2.16.16"
  sha256 "190ed0494efc8cdd70dd21998b39c2155f112d30fa7c3951af2ffd87d3f45668"

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
