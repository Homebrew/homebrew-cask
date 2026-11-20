cask "font-jaldi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/jaldi"
  name "Jaldi"
  homepage "https://fonts.google.com/specimen/Jaldi"

  font "Jaldi-Bold.ttf"
  font "Jaldi-Regular.ttf"

  zap :not_required
end
