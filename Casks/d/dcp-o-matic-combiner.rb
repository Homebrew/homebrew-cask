cask "dcp-o-matic-combiner" do
  version "2.16.89"
  sha256 "96f0f24fc44e92dc2a31fe86ca2d5dd4dcce2756c2e2ffff0793a1d7f94b58cd"

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
