cask "dcp-o-matic-combiner" do
  version "2.16.82"
  sha256 "2ba528b305a9c684c8d669af58e3b4587c22fe06e4e5f9c6b25eb1eef48c8a86"

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
