cask "dcp-o-matic-batch-converter" do
  version "2.16.36"
  sha256 "446715c31aca4755c33dcfbf8a5e3f26e8992ce78ca2b5b8f57bae1ca656873b"

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
