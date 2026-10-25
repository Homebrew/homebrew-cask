cask "font-ark-pixel-12px-proportional" do
  version "2026.10.25"
  sha256 "1a5c194397b7b30685c2126df1c0f0183c14367befd2e6291c9b3184bc187fc7"

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

  # No zap stanza required
end
