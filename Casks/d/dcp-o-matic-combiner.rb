cask "dcp-o-matic-combiner" do
  version "2.16.63"
  sha256 "ef5a677f235aff08f22f9b151d2d602cb6d0f4ae66f1b4ba23562f94a1b17189"

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
