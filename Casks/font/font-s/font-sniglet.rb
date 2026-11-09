cask "font-sniglet" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/sniglet"
  name "Sniglet"
  homepage "https://fonts.google.com/specimen/Sniglet"

  font "Sniglet-ExtraBold.ttf"
  font "Sniglet-Regular.ttf"

  zap :not_required
end
