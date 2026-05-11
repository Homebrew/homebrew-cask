cask "dcp-o-matic-combiner" do
  version "2.18.40"
  sha256 "7375cb7e5ffcbeffd6dfb5311d853e79a8610217328eae27997dcc80e6571a5f"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-combiner&version=#{version}"
  name "DCP-o-matic-combiner"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: ">= :big_sur"

  app "DCP-o-matic #{version.major} Combiner.app"

  # No zap stanza required
end
