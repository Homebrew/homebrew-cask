cask "dcp-o-matic-batch-converter" do
  version "2.16.18"
  sha256 "a4b57b1159778f8d29512aede22cbb99a59a8888f05d41baffd41d1af057b191"

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
