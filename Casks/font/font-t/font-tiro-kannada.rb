cask "font-tiro-kannada" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tirokannada"
  name "Tiro Kannada"
  homepage "https://fonts.google.com/specimen/Tiro+Kannada"

  font "TiroKannada-Italic.ttf"
  font "TiroKannada-Regular.ttf"

  # No zap stanza required
end
