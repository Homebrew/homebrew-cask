cask "font-fondamento" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/fondamento"
  name "Fondamento"
  homepage "https://fonts.google.com/specimen/Fondamento"

  font "Fondamento-Italic.ttf"
  font "Fondamento-Regular.ttf"

  zap :not_required
end
