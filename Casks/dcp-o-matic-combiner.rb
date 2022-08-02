cask "dcp-o-matic-combiner" do
  version "2.16.18"
  sha256 "0bc87eb3e6b4bd36963c8172e5f8b13f582f6866e87bfc52f08858bc2d1797b5"

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
