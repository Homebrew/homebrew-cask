cask "font-yrsa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/yrsa"
  name "Yrsa"
  homepage "https://fonts.google.com/specimen/Yrsa"

  font "Yrsa-Italic[wght].ttf"
  font "Yrsa[wght].ttf"

  # No zap stanza required
end
