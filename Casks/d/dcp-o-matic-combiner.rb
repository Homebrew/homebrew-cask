cask "dcp-o-matic-combiner" do
  version "2.16.67"
  sha256 "fb61845a51d8ed7c7f6efb85a5291f22e0247a5e56f37814c467d81f7b63c4c6"

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
