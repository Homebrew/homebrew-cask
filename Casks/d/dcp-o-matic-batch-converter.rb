cask "dcp-o-matic-batch-converter" do
  version "2.18.44"
  sha256 "e5364abd314c2e1545ac070032a78815d6f32e97cd4cd5bc28ae10864a39a2e0"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
