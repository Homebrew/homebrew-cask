cask "dcp-o-matic-combiner" do
  version "2.16.58"
  sha256 "80daa81f712618d4ed9d405510464e95d9c18faa3e88dba925ebeed92c82bbd0"

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
