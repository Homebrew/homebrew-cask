cask "font-tienne" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/tienne"
  name "Tienne"
  homepage "https://fonts.google.com/specimen/Tienne"

  font "Tienne-Black.ttf"
  font "Tienne-Bold.ttf"
  font "Tienne-Regular.ttf"

  zap :not_required
end
