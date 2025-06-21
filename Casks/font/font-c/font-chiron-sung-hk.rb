cask "font-chiron-sung-hk" do
  version "1.020"
  sha256 "960d5ce4b852518f093ef27c4571488fd7774b22aafff3cae235930e75407425"

  url "https://github.com/chiron-fonts/chiron-sung-hk/archive/refs/tags/v#{version}.tar.gz"
  name "Chiron Sung HK"
  name "昭源宋體"
  homepage "https://github.com/chiron-fonts/chiron-sung-hk"

  font "chiron-sung-hk-#{version}/VAR/ChironSungHKItVF.otf"
  font "chiron-sung-hk-#{version}/VAR/ChironSungHKVF.otf"

  # No zap stanza required
end
