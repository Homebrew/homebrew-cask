cask "dcp-o-matic-batch-converter" do
  version "2.16.63"
  sha256 "ac490d482e4696905b7f3c44c7df5f78603e00d32a5f6380356f6780e84785b2"

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
