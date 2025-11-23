cask "font-alumni-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/alumnisans"
  name "Alumni Sans"
  homepage "https://fonts.google.com/specimen/Alumni+Sans"

  font "AlumniSans-Italic[wght].ttf"
  font "AlumniSans[wght].ttf"

  # No zap stanza required
end
