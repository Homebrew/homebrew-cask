cask "font-saikanji-black-grid" do
  version "0.020"
  sha256 "00ce7d8de70018041e62108b804a3b33461d9266f16c0d00a8e685cfdce31518"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Black.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Black Grid"
  desc "Monochrome Black variant of SaiKanji with black fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Black.Grid.ttf"
  # No zap stanza required
end
