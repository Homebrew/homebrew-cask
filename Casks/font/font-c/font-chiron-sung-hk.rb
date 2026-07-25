cask "font-chiron-sung-hk" do
  version "1.024"
  sha256 "813baab1695c34738eaa789d7b4c287fdb6a966878bc9268eda58c810451ed49"

  url "https://github.com/chiron-fonts/chiron-sung-hk/archive/refs/tags/v#{version}.tar.gz"
  name "Chiron Sung HK"
  name "昭源宋體"
  homepage "https://github.com/chiron-fonts/chiron-sung-hk"

  font "chiron-sung-hk-#{version}/VAR_OTF/ChironSungHKItVF.otf"
  font "chiron-sung-hk-#{version}/VAR_OTF/ChironSungHKVF.otf"

  # No zap stanza required
end
