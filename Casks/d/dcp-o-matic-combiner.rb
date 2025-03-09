cask "dcp-o-matic-combiner" do
  version "2.18.13"
  sha256 "f090b9ed79cffba80157c78ca407263ac36128ab737cc3289af7a516cdfa715b"

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
