cask "dcp-o-matic-combiner" do
  version "2.16.10"
  sha256 "383780da33baeb4e4e9e14fd909e99a5b714e7305d78a87e05c7cb3a4b454457"

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
