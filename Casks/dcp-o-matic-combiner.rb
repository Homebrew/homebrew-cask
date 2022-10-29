cask "dcp-o-matic-combiner" do
  version "2.16.32"
  sha256 "6c6f8cdfd986035e7baf220b3c3b6d0fc6901752cfbb4c3ceb8417b0e1d3943e"

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
