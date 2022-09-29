cask "dcp-o-matic-combiner" do
  version "2.16.28"
  sha256 "67e3ee7132cfa37ad98e8783a572494ef702618ae99d462a76cd8e5e4a32d92d"

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
