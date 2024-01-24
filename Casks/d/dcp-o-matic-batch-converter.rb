cask "dcp-o-matic-batch-converter" do
  version "2.16.72"
  sha256 "cc881fa51dec213de1f9a556d10c35ce2eee6ba63d387e1947c62804f008540f"

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
