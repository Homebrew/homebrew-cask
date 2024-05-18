cask "dcp-o-matic-batch-converter" do
  version "2.16.85"
  sha256 "8abb87bc4e6e52941913340a5ebe04ec33aed8482d7072e5ce730bcea9431cf5"

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
