cask "dcp-o-matic-batch-converter" do
  version "2.16.29"
  sha256 "71ffe97f9429d8cadda16129c1d08179bdc896a7f00691dd4fab5c7def36f527"

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
