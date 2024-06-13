cask "font-ark-pixel-10px-proportional" do
  version "2024.05.12"
  sha256 "b193e7b49fe17ad20df86115dbaf169ab4f49c5b6b38ac2653ea643bd7afd67a"

  url "https://github.com/TakWolf/ark-pixel-font/releases/download/#{version}/ark-pixel-font-10px-proportional-otf-v#{version}.zip"
  name "Ark Pixel 10px Proportional"
  homepage "https://github.com/TakWolf/ark-pixel-font"

  font "ark-pixel-10px-proportional-ja.otf"
  font "ark-pixel-10px-proportional-ko.otf"
  font "ark-pixel-10px-proportional-latin.otf"
  font "ark-pixel-10px-proportional-zh_cn.otf"
  font "ark-pixel-10px-proportional-zh_hk.otf"
  font "ark-pixel-10px-proportional-zh_tr.otf"
  font "ark-pixel-10px-proportional-zh_tw.otf"

  # No zap stanza required
end
