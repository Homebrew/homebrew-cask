cask "font-chiron-sung-hk" do
  version "1.019"
  sha256 "ba50c6c87507f369398cf628c31e98bb4c52819079a46e5cc0c5d3f16a78eaad"

  url "https://github.com/chiron-fonts/chiron-sung-hk/archive/refs/tags/v#{version}.tar.gz"
  name "Chiron Sung HK"
  name "昭源宋體"
  homepage "https://github.com/chiron-fonts/chiron-sung-hk"

  font "chiron-sung-hk-#{version}/VAR/ChironSungHKItVF.otf"
  font "chiron-sung-hk-#{version}/VAR/ChironSungHKVF.otf"

  # No zap stanza required
end
