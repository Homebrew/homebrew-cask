cask "dcp-o-matic-combiner" do
  version "2.16.81"
  sha256 "67af654beffbdb6a29742eb04e607dd8d13bb7de9eec479b9a030194e1739b6c"

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
