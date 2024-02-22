cask "dcp-o-matic-batch-converter" do
  version "2.16.78"
  sha256 "a6eba09a83361ab4ddacc247e2969798ef2a89d35c731018ffe6fae675e1aa9b"

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
