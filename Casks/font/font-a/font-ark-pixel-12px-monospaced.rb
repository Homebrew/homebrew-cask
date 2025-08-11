cask "font-ark-pixel-12px-monospaced" do
  version "2025.08.11"
  sha256 "4b54cf907b42557db6dc69fa755b46b0321ffe43acd4b9a7278b5e74bc46619d"

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
