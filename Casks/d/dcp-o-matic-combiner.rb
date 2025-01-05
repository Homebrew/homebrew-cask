cask "dcp-o-matic-combiner" do
  version "2.18.2"
  sha256 "4ff90f0060abdf54da16b3eb380301c6dbed6246e1e92e9ddbb98b39e75cfd73"

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
