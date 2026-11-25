cask "font-ark-pixel-12px-proportional" do
  version "2026.11.10"
  sha256 "f04feec4c007dea65d297a06794108cc6aaee575781dd63f66dbaff009491601"

  url "https://github.com/TakWolf/ark-pixel-font/releases/download/#{version}/ark-pixel-font-12px-proportional-otf-v#{version}.zip"
  name "Ark Pixel 12px Proportional"
  homepage "https://github.com/TakWolf/ark-pixel-font"

  font "ark-pixel-12px-proportional-ja.otf"
  font "ark-pixel-12px-proportional-ko.otf"
  font "ark-pixel-12px-proportional-latin.otf"
  font "ark-pixel-12px-proportional-zh_hans.otf"
  font "ark-pixel-12px-proportional-zh_hant.otf"
  font "ark-pixel-12px-proportional-zh_hk.otf"
  font "ark-pixel-12px-proportional-zh_tw.otf"

  zap :not_required
end
