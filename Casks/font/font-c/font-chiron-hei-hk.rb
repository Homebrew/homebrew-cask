cask "font-chiron-hei-hk" do
  version "2.524"
  sha256 "c0986417e2778e87516ed956b31a82457dad10136cb5f737d3df30c4f003b57c"

  url "https://github.com/chiron-fonts/chiron-hei-hk/archive/refs/tags/v#{version}.tar.gz"
  name "Chiron Hei HK"
  name "昭源黑體"
  homepage "https://github.com/chiron-fonts/chiron-hei-hk"

  font "chiron-hei-hk-#{version}/VAR/ChironHeiHKItVF.otf"
  font "chiron-hei-hk-#{version}/VAR/ChironHeiHKVF.otf"

  # No zap stanza required
end
