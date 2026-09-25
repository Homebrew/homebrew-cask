cask "font-ark-pixel-10px-proportional" do
  version "2026.09.25"
  sha256 "a610b2e06db6fa0626ff923fa78bd231483710d52fd0c28196ab882cab300de4"

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
