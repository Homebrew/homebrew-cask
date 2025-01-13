cask "dcp-o-matic-combiner" do
  version "2.18.4"
  sha256 "72b28b84546a4a807e5a3cf131cf3b1f2c210c475c936c733aeecd2cb5958d04"

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
