cask "font-ark-pixel-10px-monospaced" do
  version "2026.10.16"
  sha256 "a82bd2caddaa3b2346db8714049808db7958777446ff0f47228dfe338df2d94b"

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
