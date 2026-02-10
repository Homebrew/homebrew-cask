cask "font-chiron-sung-hk" do
  version "1.023"
  sha256 "15a3aec23e624fd7d6ca504481bdb27c3f2d57f3460c107becb8721b3f0e2cfc"

  url "https://github.com/chiron-fonts/chiron-sung-hk/archive/refs/tags/v#{version}.tar.gz"
  name "Chiron Sung HK"
  name "昭源宋體"
  homepage "https://github.com/chiron-fonts/chiron-sung-hk"

  font "chiron-sung-hk-#{version}/VAR_OTF/ChironSungHKItVF.otf"
  font "chiron-sung-hk-#{version}/VAR_OTF/ChironSungHKVF.otf"

  # No zap stanza required
end
