cask "font-ark-pixel-12px-proportional" do
  version "2025.08.11"
  sha256 "e19f01c5bab546a5970d1f2b9f855ab1ae73f4b5dd33bd87f943545d421e2371"

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
