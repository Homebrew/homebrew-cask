cask "dcp-o-matic-combiner" do
  version "2.16.90"
  sha256 "b27946f2cdad1849e5c47960486f2482a28db8a6b41c6e9bff65f16ac5156f91"

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
