cask "font-rethink-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/rethinksans"
  name "Rethink Sans"
  homepage "https://fonts.google.com/specimen/Rethink+Sans"

  font "RethinkSans-Italic[wght].ttf"
  font "RethinkSans[wght].ttf"

  zap :not_required
end
