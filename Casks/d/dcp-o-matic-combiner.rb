cask "dcp-o-matic-combiner" do
  version "2.18.18"
  sha256 "039ecb30677a5648a5d838c323d9d16a4cd7fe83191eae1f7ef6219cd09b2c1b"

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
