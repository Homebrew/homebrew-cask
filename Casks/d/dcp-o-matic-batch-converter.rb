cask "dcp-o-matic-batch-converter" do
  version "2.16.83"
  sha256 "0010f5ce62f973fdb907e7133906d1d6831e8b0034258fc00a39335697e2300d"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
