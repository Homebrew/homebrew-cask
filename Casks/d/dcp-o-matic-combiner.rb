cask "dcp-o-matic-combiner" do
  version "2.16.66"
  sha256 "7c8de30bc7379fe64cc1e5a7b2231b1bc91156fa1f79551a7c564e790d3580fa"

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
