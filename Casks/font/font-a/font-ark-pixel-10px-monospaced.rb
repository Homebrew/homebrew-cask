cask "font-ark-pixel-10px-monospaced" do
  version "2025.07.21"
  sha256 "421c0f9abf93e11c92c084593889714452a6008c42e2d697cfd379d6c8f1c206"

  url "https://github.com/TakWolf/ark-pixel-font/releases/download/#{version}/ark-pixel-font-10px-monospaced-otf-v#{version}.zip"
  name "Ark Pixel 10px Monospaced"
  homepage "https://github.com/TakWolf/ark-pixel-font"

  font "ark-pixel-10px-monospaced-ja.otf"
  font "ark-pixel-10px-monospaced-ko.otf"
  font "ark-pixel-10px-monospaced-latin.otf"
  font "ark-pixel-10px-monospaced-zh_cn.otf"
  font "ark-pixel-10px-monospaced-zh_hk.otf"
  font "ark-pixel-10px-monospaced-zh_tr.otf"
  font "ark-pixel-10px-monospaced-zh_tw.otf"

  # No zap stanza required
end
