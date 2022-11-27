cask "dcp-o-matic-combiner" do
  version "2.16.34"
  sha256 "d0b99ee6e10bc40c4fc41dce8145be0d36ffb3b1b892b893b650f495fcf71798"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-combiner&version=#{version}"
  name "dcp-o-matic-combiner"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Combiner.app"

  # No zap stanza required
end
