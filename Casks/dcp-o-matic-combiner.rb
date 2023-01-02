cask "dcp-o-matic-combiner" do
  version "2.16.38"
  sha256 "837f242982321bf9e37c7b7257bbdfebf906ecfac11cab3853cc824d0098cb24"

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
