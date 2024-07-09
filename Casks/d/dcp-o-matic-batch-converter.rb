cask "dcp-o-matic-batch-converter" do
  version "2.16.88"
  sha256 "4c23f1bf72ac2934ce055937b1c05365614f2a29e2225284e80ea3ef5851320c"

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
