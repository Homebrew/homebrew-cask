cask "dcp-o-matic-combiner" do
  version "2.16.62"
  sha256 "1704a94e2aac9c0bb7b30d2ccf1442c182cdd266ad8da8ecc39ea1a660f501fc"

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
