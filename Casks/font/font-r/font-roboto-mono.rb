cask "font-roboto-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/robotomono"
  name "Roboto Mono"
  homepage "https://fonts.google.com/specimen/Roboto+Mono"

  font "RobotoMono-Italic[wght].ttf"
  font "RobotoMono[wght].ttf"

  zap :not_required
end
