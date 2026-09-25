cask "font-ark-pixel-12px-proportional" do
  version "2026.09.25"
  sha256 "30b15aa99b622c3dd0f1e52e0e8133899f65e2ae9cfee28aa106dd6daa4add76"

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
