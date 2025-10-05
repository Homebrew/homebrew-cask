cask "font-ark-pixel-16px-proportional" do
  version "2025.10.06"
  sha256 "cfaefa85ce136d64b7e4634ce25504a11e2b7dc25e4c7d9b111dbd8612549396"

  url "https://github.com/TakWolf/ark-pixel-font/releases/download/#{version}/ark-pixel-font-16px-proportional-otf-v#{version}.zip"
  name "Ark Pixel 16px Proportional"
  homepage "https://github.com/TakWolf/ark-pixel-font"

  font "ark-pixel-16px-proportional-ja.otf"
  font "ark-pixel-16px-proportional-ko.otf"
  font "ark-pixel-16px-proportional-latin.otf"
  font "ark-pixel-16px-proportional-zh_cn.otf"
  font "ark-pixel-16px-proportional-zh_hk.otf"
  font "ark-pixel-16px-proportional-zh_tr.otf"
  font "ark-pixel-16px-proportional-zh_tw.otf"

  # No zap stanza required
end
