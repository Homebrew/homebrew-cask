cask "dcp-o-matic-combiner" do
  version "2.16.95"
  sha256 "b3bb0a2bb46f4d06e8286235200556370b28c1468f9c4cf73ed8c76382f4c221"

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
