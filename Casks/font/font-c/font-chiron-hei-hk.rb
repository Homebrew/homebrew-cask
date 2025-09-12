cask "font-chiron-hei-hk" do
  version "2.602"
  sha256 "27d2955e8ce957953b0163a8e27de32ff81c4aac0bcbc66566a4db84650adecc"

  url "https://github.com/chiron-fonts/chiron-hei-hk/archive/refs/tags/v#{version}.tar.gz"
  name "Chiron Hei HK"
  name "昭源黑體"
  homepage "https://github.com/chiron-fonts/chiron-hei-hk"

  font "chiron-hei-hk-#{version}/VAR_OTF/ChironHeiHKItVF.otf"
  font "chiron-hei-hk-#{version}/VAR_OTF/ChironHeiHKVF.otf"

  # No zap stanza required
end
