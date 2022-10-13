cask "dcp-o-matic-batch-converter" do
  version "2.16.30"
  sha256 "b04be3307a6ad1066c877bb353f6d1f6e29484b55fe489555b579090601cccb2"

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
