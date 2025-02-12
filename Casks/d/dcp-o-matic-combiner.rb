cask "dcp-o-matic-combiner" do
  version "2.18.11"
  sha256 "966b8eda09e831967edf24d0c9c1a6733e9f954ab90b777b918bf15bca519d9f"

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
