cask "dcp-o-matic-combiner" do
  version "2.16.69"
  sha256 "60a3f16ed48be4b40f5b2c338a9ef01e05547c4f9e8f70ad0c383e751e96d438"

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
