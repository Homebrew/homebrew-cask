cask "font-kode-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kodemono/KodeMono%5BROND%2Cwdth%2Cwght%5D.ttf"
  name "Kode Mono"
  homepage "https://fonts.google.com/specimen/Kode+Mono"

  font "KodeMono[ROND,wdth,wght].ttf"

  zap :not_required
end
