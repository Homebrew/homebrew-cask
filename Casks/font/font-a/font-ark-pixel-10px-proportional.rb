cask "font-ark-pixel-10px-proportional" do
  version "2026.10.16"
  sha256 "9e314893652065cf6e48de4918bd7756e09ac4da7ef1c41bd78c25269ac48391"

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

  # No zap stanza required
end
