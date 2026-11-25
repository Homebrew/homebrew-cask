cask "font-albert-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/albertsans"
  name "Albert Sans"
  homepage "https://fonts.google.com/specimen/Albert+Sans"

  font "AlbertSans-Italic[wght].ttf"
  font "AlbertSans[wght].ttf"

  zap :not_required
end
