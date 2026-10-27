cask "font-ark-pixel-10px-monospaced" do
  version "2026.10.25"
  sha256 "ff27ad5d54b93275226402122a47ab6e5a25d83cf6ca9c5ba71cfff415407d48"

  url "https://github.com/TakWolf/ark-pixel-font/releases/download/#{version}/ark-pixel-font-10px-monospaced-otf-v#{version}.zip"
  name "Ark Pixel 10px Monospaced"
  homepage "https://github.com/TakWolf/ark-pixel-font"

  font "ark-pixel-10px-monospaced-ja.otf"
  font "ark-pixel-10px-monospaced-ko.otf"
  font "ark-pixel-10px-monospaced-latin.otf"
  font "ark-pixel-10px-monospaced-zh_hans.otf"
  font "ark-pixel-10px-monospaced-zh_hant.otf"
  font "ark-pixel-10px-monospaced-zh_hk.otf"
  font "ark-pixel-10px-monospaced-zh_tw.otf"

  zap :not_required
end
