cask "dcp-o-matic-combiner" do
  version "2.16.99"
  sha256 "db1d0acbd842c345878f61cac88ee9bddaf498b07eaa9a73723884ac21a61db4"

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
