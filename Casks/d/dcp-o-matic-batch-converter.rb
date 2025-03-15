cask "dcp-o-matic-batch-converter" do
  version "2.18.14"
  sha256 "40b2092bc9ad6df4aad8ceb9f34d90e653938872b5b191d5ebd5f73e8e59d656"

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
