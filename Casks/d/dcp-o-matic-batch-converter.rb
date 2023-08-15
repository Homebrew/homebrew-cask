cask "dcp-o-matic-batch-converter" do
  version "2.16.61"
  sha256 "193b188cde20e2fce08ec197a5856b32ee5ab74ccb4f8d6229382e8f31e36235"

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
