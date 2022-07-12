cask "dcp-o-matic-combiner" do
  version "2.16.17"
  sha256 "c34e2aa9b581c99afefe7511c5cc0d640122169411d1ad6e2c5e4e7ebdeea73e"

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
