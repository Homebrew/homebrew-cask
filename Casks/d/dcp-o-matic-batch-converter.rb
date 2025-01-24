cask "dcp-o-matic-batch-converter" do
  version "2.18.7"
  sha256 "0252246131cff82c6b5e43a3ebd98b4bf6bfe6ae285da0d44b40cdcf401cd2a2"

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
