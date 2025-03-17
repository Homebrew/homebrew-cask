cask "font-maple-mono-variable" do
  version "7.0"
  sha256 "1082df38343c0c98b24f08264e883070d973f98048766964fe69df159e0499ef"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMono-Variable.zip"
  name "Maple Mono Variable"
  homepage "https://github.com/subframe7536/Maple-font"

  livecheck do
    cask "font-maple-mono"
  end

  font "MapleMono[wght].ttf"
  font "MapleMono-Italic[wght].ttf"

  # No zap stanza required
end
