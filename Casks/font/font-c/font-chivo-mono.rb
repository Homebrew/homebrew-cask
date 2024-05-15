cask "font-chivo-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/chivomono"
  name "Chivo Mono"
  desc "Variable font ranging from thin to black with matching italics"
  homepage "https://fonts.google.com/specimen/Chivo+Mono"

  font "ChivoMono-Italic[wght].ttf"
  font "ChivoMono[wght].ttf"

  # No zap stanza required
end
