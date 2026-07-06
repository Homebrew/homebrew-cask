cask "font-saikanji-spectrum-gradient-nogrid" do
  version "0.020"
  sha256 "aaf6ccee285183e9a8cf39ea846ac7e29255d0651b51d4f4a805db3890f47885"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Spectrum.Gradient.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Spectrum Gradient No Grid"
  desc "Regular Spectrum variant of SaiKanji with gradient fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Spectrum.Gradient.ttf"
  # No zap stanza required
end
