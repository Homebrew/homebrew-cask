cask "dcp-o-matic-batch-converter" do
  version "2.18.3"
  sha256 "818ad0173cb06f92e7b6c9b92fc3a4293d88349fdabe59d8f4a9a3f92d6959b4"

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
