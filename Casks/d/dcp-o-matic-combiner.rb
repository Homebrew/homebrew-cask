cask "dcp-o-matic-combiner" do
  version "2.16.80"
  sha256 "3d25f69bbaa39d65fdb1d246a53ec0164b59bf2816ad93182c15015d367f0ed6"

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
