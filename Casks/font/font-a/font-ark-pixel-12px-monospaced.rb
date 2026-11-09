cask "font-ark-pixel-12px-monospaced" do
  version "2026.10.25"
  sha256 "121ec3a9397447ea32e8a4837ef1004bd0be60cf2c394adc1fbc3ba14cd65339"

  url "https://github.com/TakWolf/ark-pixel-font/releases/download/#{version}/ark-pixel-font-12px-monospaced-otf-v#{version}.zip"
  name "Ark Pixel 12px Monospaced"
  homepage "https://github.com/TakWolf/ark-pixel-font"

  font "ark-pixel-12px-monospaced-ja.otf"
  font "ark-pixel-12px-monospaced-ko.otf"
  font "ark-pixel-12px-monospaced-latin.otf"
  font "ark-pixel-12px-monospaced-zh_hans.otf"
  font "ark-pixel-12px-monospaced-zh_hant.otf"
  font "ark-pixel-12px-monospaced-zh_hk.otf"
  font "ark-pixel-12px-monospaced-zh_tw.otf"

  zap :not_required
end
