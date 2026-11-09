cask "font-ark-pixel-10px-proportional" do
  version "2026.10.25"
  sha256 "d252a3cc41d43bd8a341c7d3b629c51bceb456f33c2359fdfa3ac5b49cf61136"

  url "https://github.com/TakWolf/ark-pixel-font/releases/download/#{version}/ark-pixel-font-10px-proportional-otf-v#{version}.zip"
  name "Ark Pixel 10px Proportional"
  homepage "https://github.com/TakWolf/ark-pixel-font"

  font "ark-pixel-10px-proportional-ja.otf"
  font "ark-pixel-10px-proportional-ko.otf"
  font "ark-pixel-10px-proportional-latin.otf"
  font "ark-pixel-10px-proportional-zh_hans.otf"
  font "ark-pixel-10px-proportional-zh_hant.otf"
  font "ark-pixel-10px-proportional-zh_hk.otf"
  font "ark-pixel-10px-proportional-zh_tw.otf"

  zap :not_required
end
