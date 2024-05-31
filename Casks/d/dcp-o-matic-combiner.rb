cask "dcp-o-matic-combiner" do
  version "2.16.86"
  sha256 "a3c77521185329bf155b28d02cdc35353e10ec12e8b79e88e0010bb1b92eb5e1"

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
