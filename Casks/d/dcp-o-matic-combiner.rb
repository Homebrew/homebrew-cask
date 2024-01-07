cask "dcp-o-matic-combiner" do
  version "2.16.71"
  sha256 "b8f10e6b8357f0b1d9bb600cde413631f8c24125cbcec38909d304a5434259e1"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-combiner&version=#{version}"
  name "DCP-o-matic-combiner"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Combiner.app"

  # No zap stanza required
end
