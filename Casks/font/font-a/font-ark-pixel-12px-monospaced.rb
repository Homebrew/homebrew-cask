cask "font-ark-pixel-12px-monospaced" do
  version "2026.10.16"
  sha256 "6fd8fed313e23d01ce46482599e4aa87370c221fd6d59db411a8b7ace62d1e93"

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

  # No zap stanza required
end
