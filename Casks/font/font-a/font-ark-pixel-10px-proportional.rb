cask "font-ark-pixel-10px-proportional" do
  version "2026.11.10"
  sha256 "ade94658653c2eea3065f8c422c5a40ea8cefea57c453750c127e7c637a80b43"

  url "https://github.com/TakWolf/ark-pixel-font/releases/download/#{version}/ark-pixel-font-10px-proportional-otf-v#{version}.zip"
  name "Ark Pixel 10px Proportional"
  homepage "https://github.com/TakWolf/ark-pixel-font"

  font "ark-pixel-10px-proportional-ja.otf"
  font "ark-pixel-10px-proportional-ko.otf"
  font "ark-pixel-10px-proportional-latin.otf"
  font "ark-pixel-10px-proportional-zh_hans.otf"
  font "ark-pixel-10px-proportional-zh_hant.otf"
  font "ark-pixel-10px-proportional-zh_hk.otf"
  font "ark-pixel-10px-proportional-zh_tw.otf"

  zap :not_required
end
