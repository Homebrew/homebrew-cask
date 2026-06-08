cask "font-ark-pixel-12px-monospaced" do
  version "2026.05.07"
  sha256 "c7a22fb957a4a77f3cb0d123ca3c8dd4c10bb59c292db12212e78eeb2c01d9a9"

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
