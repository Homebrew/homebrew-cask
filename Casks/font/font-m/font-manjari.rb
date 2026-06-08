cask "font-manjari" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/manjari"
  name "Manjari"
  homepage "https://fonts.google.com/specimen/Manjari"

  font "Manjari-Bold.ttf"
  font "Manjari-Regular.ttf"
  font "Manjari-Thin.ttf"

  # No zap stanza required
end
