cask "dcp-o-matic-combiner" do
  version "2.16.98"
  sha256 "f64a2e4c5f9c2bc79e571e287ccfb62a7855b32954aecd0c113f96feebc7576d"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-combiner&version=#{version}"
  name "DCP-o-matic-combiner"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Combiner.app"

  # No zap stanza required
end
