cask "dcp-o-matic-batch-converter" do
  version "2.16.41"
  sha256 "fc0dd5c9c7896bf96889c47ea33d75b5d287b13fb34b15b3dcf1d8ac4d9de577"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
