cask "dcp-o-matic-combiner" do
  version "2.16.68"
  sha256 "4ce4af79715ad180c8b6f4e09f742dbb277d708bedf2c6c5c532734c9b27dc3b"

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
