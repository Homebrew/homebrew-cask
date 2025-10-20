cask "font-ark-pixel-12px-monospaced" do
  version "2025.10.20"
  sha256 "5a88a50237f63a47335ca65f362ea7966f29861a42a3cf04872a27e94d245a27"

  url "https://github.com/TakWolf/ark-pixel-font/releases/download/#{version}/ark-pixel-font-12px-monospaced-otf-v#{version}.zip"
  name "Ark Pixel 12px Monospaced"
  homepage "https://github.com/TakWolf/ark-pixel-font"

  font "ark-pixel-12px-monospaced-ja.otf"
  font "ark-pixel-12px-monospaced-ko.otf"
  font "ark-pixel-12px-monospaced-latin.otf"
  font "ark-pixel-12px-monospaced-zh_cn.otf"
  font "ark-pixel-12px-monospaced-zh_hk.otf"
  font "ark-pixel-12px-monospaced-zh_tr.otf"
  font "ark-pixel-12px-monospaced-zh_tw.otf"

  # No zap stanza required
end
