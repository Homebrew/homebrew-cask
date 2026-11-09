cask "font-petrona" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/petrona"
  name "Petrona"
  homepage "https://fonts.google.com/specimen/Petrona"

  font "Petrona-Italic[wght].ttf"
  font "Petrona[wght].ttf"

  zap :not_required
end
