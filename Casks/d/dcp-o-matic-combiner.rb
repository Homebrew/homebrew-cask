cask "dcp-o-matic-combiner" do
  version "2.18.5"
  sha256 "dd078204923e398c2dc1b68685d3e6291643ecf01c9a00b6ab51acfdab910f9d"

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
