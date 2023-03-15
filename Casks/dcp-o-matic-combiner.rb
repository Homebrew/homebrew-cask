cask "dcp-o-matic-combiner" do
  version "2.16.47"
  sha256 "e844ebf0e855e5bb14b5797930094a7065f7dfb413e76880fb7fd4b0a2aad5a6"

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
