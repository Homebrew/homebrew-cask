cask "font-ar-one-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/aronesans/AROneSans%5BARRR%2Cwght%5D.ttf"
  name "AR One Sans"
  homepage "https://fonts.google.com/specimen/AR+One+Sans"

  font "AROneSans[ARRR,wght].ttf"

  zap :not_required
end
