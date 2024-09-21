cask "dcp-o-matic-batch-converter" do
  version "2.16.93"
  sha256 "78b8bd519d917b3075f9295987ae83c5d2f9bea89de40c65671ee2c4da39c1a8"

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
