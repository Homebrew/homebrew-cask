cask "font-ark-pixel-12px-proportional" do
  version "2026.07.20"
  sha256 "63ca8f9467c1544be92611168b23220e2ad1881728789072775889fc064be4ef"

  url "https://github.com/TakWolf/ark-pixel-font/releases/download/#{version}/ark-pixel-font-12px-proportional-otf-v#{version}.zip"
  name "Ark Pixel 12px Proportional"
  homepage "https://github.com/TakWolf/ark-pixel-font"

  font "ark-pixel-12px-proportional-ja.otf"
  font "ark-pixel-12px-proportional-ko.otf"
  font "ark-pixel-12px-proportional-latin.otf"
  font "ark-pixel-12px-proportional-zh_cn.otf"
  font "ark-pixel-12px-proportional-zh_hk.otf"
  font "ark-pixel-12px-proportional-zh_tr.otf"
  font "ark-pixel-12px-proportional-zh_tw.otf"

  # No zap stanza required
end
