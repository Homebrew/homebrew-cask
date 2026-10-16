cask "font-ark-pixel-12px-proportional" do
  version "2026.10.16"
  sha256 "42d36cb4cc9c7b1c56fa36857e7ce5ed469430bf19c4e27d49fe48f1a5e88984"

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
