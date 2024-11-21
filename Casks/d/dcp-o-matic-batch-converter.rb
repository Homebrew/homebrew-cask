cask "dcp-o-matic-batch-converter" do
  version "2.16.98"
  sha256 "d063a2ed38db93a24715501056a4d44f238096a0b5aedf24a3df46a5b8a8e3c9"

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
