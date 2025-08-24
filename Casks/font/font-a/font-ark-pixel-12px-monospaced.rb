cask "font-ark-pixel-12px-monospaced" do
  version "2025.08.24"
  sha256 "67057077f666bc2b92ce74d6ac0b291ce448c0ddb109138ca41c1521e206a9a1"

  url "https://github.com/TakWolf/ark-pixel-font/releases/download/#{version}/ark-pixel-font-12px-monospaced-otf-v#{version}.zip"
  name "Ark Pixel 12px Monospaced"
  homepage "https://github.com/TakWolf/ark-pixel-font"

  font "ark-pixel-12px-monospaced-ja.otf"
  font "ark-pixel-12px-monospaced-ko.otf"
  font "ark-pixel-12px-monospaced-latin.otf"
  font "ark-pixel-12px-monospaced-zh_cn.otf"
  font "ark-pixel-12px-monospaced-zh_hk.otf"
  font "ark-pixel-12px-monospaced-zh_tr.otf"
  font "ark-pixel-12px-monospaced-zh_tw.otf"

  # No zap stanza required
end
