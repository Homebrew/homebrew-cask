cask "dcp-o-matic-batch-converter" do
  version "2.16.5"
  sha256 "76ac85848b3677d0c3336717559d79dccbf09dfaef589964b1fb29d78b7b802d"

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
