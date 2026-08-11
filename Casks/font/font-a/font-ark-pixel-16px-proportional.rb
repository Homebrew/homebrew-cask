cask "font-ark-pixel-16px-proportional" do
  version "2026.08.11"
  sha256 "534ebbd80ce9ca5ad155e556bb69dba305ae163b2019eca22f6e00df7051f856"

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
