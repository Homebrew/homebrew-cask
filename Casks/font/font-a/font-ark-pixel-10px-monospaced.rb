cask "font-ark-pixel-10px-monospaced" do
  version "2026.09.25"
  sha256 "5898f51c4473655fd830c00cf232a83cba68274168d94cd9e44d05587df9e9e0"

  url "https://github.com/TakWolf/ark-pixel-font/releases/download/#{version}/ark-pixel-font-10px-monospaced-otf-v#{version}.zip"
  name "Ark Pixel 10px Monospaced"
  homepage "https://github.com/TakWolf/ark-pixel-font"

  font "ark-pixel-10px-monospaced-ja.otf"
  font "ark-pixel-10px-monospaced-ko.otf"
  font "ark-pixel-10px-monospaced-latin.otf"
  font "ark-pixel-10px-monospaced-zh_hans.otf"
  font "ark-pixel-10px-monospaced-zh_hant.otf"
  font "ark-pixel-10px-monospaced-zh_hk.otf"
  font "ark-pixel-10px-monospaced-zh_tw.otf"

  # No zap stanza required
end
