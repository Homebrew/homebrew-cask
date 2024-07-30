cask "dcp-o-matic-batch-converter" do
  version "2.16.90"
  sha256 "adb2f8c7450e4ff70f749a8c130b83157f7a369f9fa5c0ef68ae822d42ae02d5"

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
