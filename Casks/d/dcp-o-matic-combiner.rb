cask "dcp-o-matic-combiner" do
  version "2.16.91"
  sha256 "e5166e2d675607b47c918a30f8a0c6c674e3eff1931189713dc75c3907beff4f"

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
