cask "font-chiron-sung-hk" do
  version "1.016"
  sha256 "e3917cb333d100698910fe58b89eb12dd357319feca6d039dd35fb34e52bce4c"

  url "https://github.com/chiron-fonts/chiron-sung-hk/archive/refs/tags/v#{version}.tar.gz"
  name "Chiron Sung HK"
  name "昭源宋體"
  homepage "https://github.com/chiron-fonts/chiron-sung-hk"

  font "chiron-sung-hk-#{version}/VAR/ChironSungHKItVF.otf"
  font "chiron-sung-hk-#{version}/VAR/ChironSungHKVF.otf"

  # No zap stanza required
end
