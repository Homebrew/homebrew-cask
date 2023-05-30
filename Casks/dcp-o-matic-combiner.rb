cask "dcp-o-matic-combiner" do
  version "2.16.57"
  sha256 "4953c4e807ea6e35b9c6777f91fa3fc0b1bf8e24c33657bf0063c4028d22b359"

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
