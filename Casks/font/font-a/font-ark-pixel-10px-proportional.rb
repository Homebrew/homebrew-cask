cask "font-ark-pixel-10px-proportional" do
  version "2025.10.06"
  sha256 "a913c0becb85ba9e197d3d8c43be78c31e447f23d91ba2611cc373d08cb2c97a"

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
