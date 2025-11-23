cask "font-chiron-sung-hk" do
  version "1.022"
  sha256 "5da0b34441eb26f53371601bcd1b8691f273bd7e92a7f5907e3d58213ec45871"

  url "https://github.com/chiron-fonts/chiron-sung-hk/archive/refs/tags/v#{version}.tar.gz"
  name "Chiron Sung HK"
  name "昭源宋體"
  homepage "https://github.com/chiron-fonts/chiron-sung-hk"

  font "chiron-sung-hk-#{version}/VAR_OTF/ChironSungHKItVF.otf"
  font "chiron-sung-hk-#{version}/VAR_OTF/ChironSungHKVF.otf"

  # No zap stanza required
end
