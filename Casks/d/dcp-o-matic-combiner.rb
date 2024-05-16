cask "dcp-o-matic-combiner" do
  version "2.16.84"
  sha256 "e95c31f9ba7b416bb594f903259058d6260ab24617a96b200558bc71ceaca4ba"

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
