cask "font-ark-pixel-16px-monospaced" do
  version "2025.10.06"
  sha256 "fa6a3a096fb63e5ca346103de29c2a25695f73867f4064a31d4df4bf8eaa8478"

  url "https://github.com/TakWolf/ark-pixel-font/releases/download/#{version}/ark-pixel-font-16px-monospaced-otf-v#{version}.zip"
  name "Ark Pixel 16px Monospaced"
  homepage "https://github.com/TakWolf/ark-pixel-font"

  font "ark-pixel-16px-monospaced-ja.otf"
  font "ark-pixel-16px-monospaced-ko.otf"
  font "ark-pixel-16px-monospaced-latin.otf"
  font "ark-pixel-16px-monospaced-zh_cn.otf"
  font "ark-pixel-16px-monospaced-zh_hk.otf"
  font "ark-pixel-16px-monospaced-zh_tr.otf"
  font "ark-pixel-16px-monospaced-zh_tw.otf"

  # No zap stanza required
end
