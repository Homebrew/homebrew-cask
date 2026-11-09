cask "font-winky-rough" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/winkyrough"
  name "Winky Rough"
  homepage "https://fonts.google.com/specimen/Winky+Rough"

  font "WinkyRough-Italic[wght].ttf"
  font "WinkyRough[wght].ttf"

  zap :not_required
end
