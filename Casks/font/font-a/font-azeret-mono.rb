cask "font-azeret-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/azeretmono"
  name "Azeret Mono"
  homepage "https://fonts.google.com/specimen/Azeret+Mono"

  font "AzeretMono-Italic[wght].ttf"
  font "AzeretMono[wght].ttf"

  # No zap stanza required
end
