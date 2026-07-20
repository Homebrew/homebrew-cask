cask "font-teachers" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/teachers"
  name "Teachers"
  homepage "https://fonts.google.com/specimen/Teachers"

  font "Teachers-Italic[wght].ttf"
  font "Teachers[wght].ttf"

  # No zap stanza required
end
