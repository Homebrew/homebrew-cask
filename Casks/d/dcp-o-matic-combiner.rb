cask "dcp-o-matic-combiner" do
  version "2.16.64"
  sha256 "8a583406365c073ed9529fc58e7656ab8a3b81d3149d1484a738a2c20ef11284"

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
