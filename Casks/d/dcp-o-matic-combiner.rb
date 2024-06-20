cask "dcp-o-matic-combiner" do
  version "2.16.87"
  sha256 "82efc4a70e0021146c91bd77bd9cd1e97cc26855ae5cf3c2322ab8868652c7a7"

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
