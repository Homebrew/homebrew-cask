cask "font-ark-pixel-10px-monospaced" do
  version "2026.11.10"
  sha256 "3cdb47489a2e00baeb232eac5ee1e1887abaf3e66378d1e39b1457cfa00b2009"

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

  zap :not_required
end
