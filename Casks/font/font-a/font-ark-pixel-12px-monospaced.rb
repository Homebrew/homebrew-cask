cask "font-ark-pixel-12px-monospaced" do
  version "2026.11.10"
  sha256 "087cff386b58d0c9a71f89b14e56d99efbed2e9d9f6c63892474fe009bc8dfac"

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
