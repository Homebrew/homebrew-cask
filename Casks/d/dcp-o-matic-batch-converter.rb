cask "dcp-o-matic-batch-converter" do
  version "2.18.12"
  sha256 "0e0deeec1e038cf4117169d4310a01985bbe977ef39db7afba6dd02c6f18592f"

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
