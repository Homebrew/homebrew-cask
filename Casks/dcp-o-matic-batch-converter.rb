cask "dcp-o-matic-batch-converter" do
  version "2.16.15"
  sha256 "545cbed4404aec3e9b2e5e86c52344f53fc21078bc3d478ff830eeae5eacfd6e"

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
