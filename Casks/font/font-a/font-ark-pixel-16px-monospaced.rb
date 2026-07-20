cask "font-ark-pixel-16px-monospaced" do
  version "2026.07.01"
  sha256 "376547d091131217504e9e40a009d5eb90b6eb54cfc30b2911fd2b97c9ee4768"

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
