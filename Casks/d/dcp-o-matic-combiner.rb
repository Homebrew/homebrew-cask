cask "dcp-o-matic-combiner" do
  version "2.18.17"
  sha256 "a4ddf7d337cb9bb15c6d0d70594834b2057fa7fb164052c3192859888fd434b9"

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
