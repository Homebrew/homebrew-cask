cask "dcp-o-matic-batch-converter" do
  version "2.16.24"
  sha256 "c18cd4270e8c398a29020697091603a0dde1adbebb2df8eab908c63be02d29ca"

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
