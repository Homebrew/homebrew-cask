cask "font-saikanji-contrast-solid-grid" do
  version "0.020"
  sha256 "772505493de7f91ed9ad130fd6c992f22714bf42e8e0a96aec584957adb500ad"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Contrast.Solid.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Contrast Solid Grid"
  desc "Regular Contrast variant of SaiKanji with solid fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Contrast.Solid.Grid.ttf"
  # No zap stanza required
end
